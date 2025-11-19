@interface WBText
+ (void)readBlocksFrom:(id)a3 textRun:(WrdTextRun *)a4 to:(id)a5;
+ (void)readFrom:(id)a3 text:(id)a4 textRun:(WrdTextRun *)a5;
@end

@implementation WBText

+ (void)readFrom:(id)a3 text:(id)a4 textRun:(WrdTextRun *)a5
{
  v9 = a3;
  v8 = a4;
  [a1 readBlocksFrom:v9 textRun:a5 to:v8];
}

+ (void)readBlocksFrom:(id)a3 textRun:(WrdTextRun *)a4 to:(id)a5
{
  v7 = a3;
  v8 = a5;
  var2 = a4->var2;
  var3 = a4->var3;
  v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = [v8 tableNestingLevel];
  WrdParagraphTextRun::WrdParagraphTextRun(&v26);
  v12 = [v8 textType];
  v13 = var3 + var2;
  v14 = a4->var2;
  v26.var1 = v12;
  v26.var2 = v14;
  if (v14 >= var3 + var2)
  {
    v24 = 0;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    while (1)
    {
      v17 = [v7 wrdReader];
      (*(*v17 + 184))(v17, &v26);
      if (!v26.var3)
      {
LABEL_21:
        v24 = 0;
        goto LABEL_22;
      }

      if (v26.var2 + v26.var3 > v13)
      {
        v26.var3 = v13 - v26.var2;
      }

      v18 = [v7 reportProgress];
      [v7 setReportProgress:0];
      if (v18)
      {
        [TCProgressContext setProgress:(v26.var3 + v26.var2)];
      }

      v19 = *(v26.var4 + 2);
      if ((v19 & 2) != 0 && (*(v26.var4 + 294) & 1) != 0 && v12 != 4)
      {
        v23 = (v19 & 0x1000000000000) != 0 ? *(v26.var4 + 61) : 1;
        if (v23 >= v11)
        {
          WrdParagraphTextRun::clone(&v26);
        }
      }

      v15 = [v8 addParagraph];
      [WBParagraph readFrom:v7 textRun:&v26 paragraph:v15];
      ++v16;
      HIDWORD(v20) = -858993459 * v16 + 429496728;
      LODWORD(v20) = HIDWORD(v20);
      if ((v20 >> 2) <= 0xCCCCCCC)
      {
        v21 = [v7 cancelDelegate];
        v22 = [v21 isCancelled];

        if (v22)
        {
          break;
        }
      }

      v15 = 0;
      [v7 setReportProgress:v18];
      v26.var2 += v26.var3;
      if (v26.var2 >= v13)
      {
        goto LABEL_21;
      }
    }

    v24 = 1;
LABEL_22:
  }

  WrdParagraphTextRun::~WrdParagraphTextRun(&v26);
  purgeTextRuns(v25);
  if (v24)
  {
    [TCMessageException raiseUntaggedMessage:@"TCUserCancelled", 0];
  }
}

@end