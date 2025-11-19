@interface PBTextRun
+ (void)readTextRun:(id)a3 plainText:(id)a4 characterAttributes:(id)a5 state:(id)a6;
@end

@implementation PBTextRun

+ (void)readTextRun:(id)a3 plainText:(id)a4 characterAttributes:(id)a5 state:(id)a6
{
  v54 = a3;
  v55 = a4;
  v9 = a5;
  v53 = a6;
  v10 = [v54 textRunCount];
  v11 = [v9 objectForKey:@"PptCharacterPropertyRunAttribute"];
  v50 = [v11 pointerValue];

  v12 = [v9 objectForKey:@"PptSpecialInfoRunAttribute"];
  v49 = [v12 pointerValue];

  v13 = [v9 objectForKey:@"PptClickHyperlinkRunAttribute"];
  v52 = [v13 pointerValue];

  v14 = [v9 objectForKey:@"PptHoverHyperlinkRunAttribute"];
  v51 = [v14 pointerValue];

  v15 = [v9 objectForKey:@"PptMetaCharacterRunAttribute"];
  v16 = [v15 nonretainedObjectValue];

  v47 = v9;
  v48 = v16;
  if (v16)
  {
    v17 = [v16 type];
    if (v17 <= 1)
    {
      if (v17)
      {
        if (v17 == 1)
        {
          v18 = [v54 addDateTimeFieldWithFormat:0];
        }
      }

      else
      {
        v35 = [v54 addFooterField];
      }

      goto LABEL_29;
    }

    if (v17 == 2)
    {
      v33 = [v54 addDateTimeFieldWithFormat:0];
      [v33 setFormat:objc_msgSend(v16, "extraData") + 1];
LABEL_28:

      goto LABEL_29;
    }

    if (v17 != 4)
    {
      goto LABEL_29;
    }

    v33 = [v54 addSlideNumberField];
    v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", objc_msgSend(v53, "numberOfSlideIndexes")];
    [v33 setText:v34];
LABEL_27:

    goto LABEL_28;
  }

  if (+[PBTextRun readTextRun:plainText:characterAttributes:state:]::once != -1)
  {
    +[PBTextRun readTextRun:plainText:characterAttributes:state:];
  }

  v19 = [v55 length];
  v20 = v19;
  if (v19)
  {
    v21 = 0;
    v46 = v19;
    while (1)
    {
      v22 = [v55 rangeOfCharacterFromSet:+[PBTextRun readTextRun:plainText:characterAttributes:state:]::specialCharSet options:2 range:{v21, v20 - v21}];
      v24 = v22;
      if (v22 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v25 = v23;
      if (v22 > v21)
      {
        v26 = [v54 addRegularTextRun];
        v27 = [v26 text];
        v28 = [v55 substringWithRange:{v21, v24 - v21}];
        [v27 setString:v28];

        v21 = v24;
      }

      v29 = v24 + v25;
      if (v21 < v24 + v25)
      {
        do
        {
          if ([v55 characterAtIndex:v21] == 11)
          {
            v30 = [v54 addTextLineBreak];
          }

          else
          {
            v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PBTextRun readTextRun:plainText:characterAttributes:state:]"];
            v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/PowerPoint/Binary/Mapper/PBTextRun.mm"];
            [OITSUAssertionHandler handleFailureInFunction:v31 file:v32 lineNumber:101 isFatal:0 description:"Unhandled special character"];

            +[OITSUAssertionHandler logBacktraceThrottled];
          }

          ++v21;
        }

        while (v29 != v21);
        v21 = v29;
      }

      v20 = v46;
      if (v21 >= v46)
      {
        goto LABEL_29;
      }
    }

    v33 = [v54 addRegularTextRun];
    v34 = [v33 text];
    v36 = [v55 substringFromIndex:v21];
    [v34 setString:v36];

    goto LABEL_27;
  }

LABEL_29:
  v37 = [v54 textRunCount];
  v39 = v47;
  v38 = v48;
  if (v10 < v37)
  {
    do
    {
      v40 = [v54 textRunAtIndex:v10];
      v41 = [v40 properties];
      if (v50)
      {
        [PBCharacterProperties readCharacterProperties:v41 characterPropertyRun:v50 state:v53];
      }

      if (v49)
      {
        [PBCharacterProperties readCharacterProperties:v41 specialInfoRun:v49 state:v53];
      }

      if (v52)
      {
        v42 = [v52 interactiveInfoContainerHolder];
        v43 = [PBHyperlink readAnimationInfoContainerHolder:v42 presentationState:v53];
        [v41 setClickHyperlink:v43];
      }

      if (v51)
      {
        v44 = [v51 interactiveInfoContainerHolder];
        v45 = [PBHyperlink readAnimationInfoContainerHolder:v44 presentationState:v53];
        [v41 setHoverHyperlink:v45];
      }

      ++v10;
      v39 = v47;
      v38 = v48;
    }

    while (v37 != v10);
  }
}

void __61__PBTextRun_readTextRun_plainText_characterAttributes_state___block_invoke()
{
  v0 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"\v"];
  v1 = +[PBTextRun readTextRun:plainText:characterAttributes:state:]::specialCharSet;
  +[PBTextRun readTextRun:plainText:characterAttributes:state:]::specialCharSet = v0;
}

@end