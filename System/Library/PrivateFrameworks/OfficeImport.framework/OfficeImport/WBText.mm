@interface WBText
+ (void)readBlocksFrom:(id)from textRun:(WrdTextRun *)run to:(id)to;
+ (void)readFrom:(id)from text:(id)text textRun:(WrdTextRun *)run;
@end

@implementation WBText

+ (void)readFrom:(id)from text:(id)text textRun:(WrdTextRun *)run
{
  fromCopy = from;
  textCopy = text;
  [self readBlocksFrom:fromCopy textRun:run to:textCopy];
}

+ (void)readBlocksFrom:(id)from textRun:(WrdTextRun *)run to:(id)to
{
  fromCopy = from;
  toCopy = to;
  var2 = run->var2;
  var3 = run->var3;
  v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
  tableNestingLevel = [toCopy tableNestingLevel];
  WrdParagraphTextRun::WrdParagraphTextRun(&v26);
  textType = [toCopy textType];
  v13 = var3 + var2;
  v14 = run->var2;
  v26.var1 = textType;
  v26.var2 = v14;
  if (v14 >= var3 + var2)
  {
    v24 = 0;
  }

  else
  {
    addParagraph = 0;
    v16 = 0;
    while (1)
    {
      wrdReader = [fromCopy wrdReader];
      (*(*wrdReader + 184))(wrdReader, &v26);
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

      reportProgress = [fromCopy reportProgress];
      [fromCopy setReportProgress:0];
      if (reportProgress)
      {
        [TCProgressContext setProgress:(v26.var3 + v26.var2)];
      }

      v19 = *(v26.var4 + 2);
      if ((v19 & 2) != 0 && (*(v26.var4 + 294) & 1) != 0 && textType != 4)
      {
        v23 = (v19 & 0x1000000000000) != 0 ? *(v26.var4 + 61) : 1;
        if (v23 >= tableNestingLevel)
        {
          WrdParagraphTextRun::clone(&v26);
        }
      }

      addParagraph = [toCopy addParagraph];
      [WBParagraph readFrom:fromCopy textRun:&v26 paragraph:addParagraph];
      ++v16;
      HIDWORD(v20) = -858993459 * v16 + 429496728;
      LODWORD(v20) = HIDWORD(v20);
      if ((v20 >> 2) <= 0xCCCCCCC)
      {
        cancelDelegate = [fromCopy cancelDelegate];
        isCancelled = [cancelDelegate isCancelled];

        if (isCancelled)
        {
          break;
        }
      }

      addParagraph = 0;
      [fromCopy setReportProgress:reportProgress];
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