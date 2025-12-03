@interface PBTextRun
+ (void)readTextRun:(id)run plainText:(id)text characterAttributes:(id)attributes state:(id)state;
@end

@implementation PBTextRun

+ (void)readTextRun:(id)run plainText:(id)text characterAttributes:(id)attributes state:(id)state
{
  runCopy = run;
  textCopy = text;
  attributesCopy = attributes;
  stateCopy = state;
  textRunCount = [runCopy textRunCount];
  v11 = [attributesCopy objectForKey:@"PptCharacterPropertyRunAttribute"];
  pointerValue = [v11 pointerValue];

  v12 = [attributesCopy objectForKey:@"PptSpecialInfoRunAttribute"];
  pointerValue2 = [v12 pointerValue];

  v13 = [attributesCopy objectForKey:@"PptClickHyperlinkRunAttribute"];
  pointerValue3 = [v13 pointerValue];

  v14 = [attributesCopy objectForKey:@"PptHoverHyperlinkRunAttribute"];
  pointerValue4 = [v14 pointerValue];

  v15 = [attributesCopy objectForKey:@"PptMetaCharacterRunAttribute"];
  nonretainedObjectValue = [v15 nonretainedObjectValue];

  v47 = attributesCopy;
  v48 = nonretainedObjectValue;
  if (nonretainedObjectValue)
  {
    type = [nonretainedObjectValue type];
    if (type <= 1)
    {
      if (type)
      {
        if (type == 1)
        {
          v18 = [runCopy addDateTimeFieldWithFormat:0];
        }
      }

      else
      {
        addFooterField = [runCopy addFooterField];
      }

      goto LABEL_29;
    }

    if (type == 2)
    {
      addSlideNumberField = [runCopy addDateTimeFieldWithFormat:0];
      [addSlideNumberField setFormat:objc_msgSend(nonretainedObjectValue, "extraData") + 1];
LABEL_28:

      goto LABEL_29;
    }

    if (type != 4)
    {
      goto LABEL_29;
    }

    addSlideNumberField = [runCopy addSlideNumberField];
    text2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", objc_msgSend(stateCopy, "numberOfSlideIndexes")];
    [addSlideNumberField setText:text2];
LABEL_27:

    goto LABEL_28;
  }

  if (+[PBTextRun readTextRun:plainText:characterAttributes:state:]::once != -1)
  {
    +[PBTextRun readTextRun:plainText:characterAttributes:state:];
  }

  v19 = [textCopy length];
  v20 = v19;
  if (v19)
  {
    v21 = 0;
    v46 = v19;
    while (1)
    {
      v22 = [textCopy rangeOfCharacterFromSet:+[PBTextRun readTextRun:plainText:characterAttributes:state:]::specialCharSet options:2 range:{v21, v20 - v21}];
      v24 = v22;
      if (v22 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v25 = v23;
      if (v22 > v21)
      {
        addRegularTextRun = [runCopy addRegularTextRun];
        text = [addRegularTextRun text];
        v28 = [textCopy substringWithRange:{v21, v24 - v21}];
        [text setString:v28];

        v21 = v24;
      }

      v29 = v24 + v25;
      if (v21 < v24 + v25)
      {
        do
        {
          if ([textCopy characterAtIndex:v21] == 11)
          {
            addTextLineBreak = [runCopy addTextLineBreak];
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

    addSlideNumberField = [runCopy addRegularTextRun];
    text2 = [addSlideNumberField text];
    v36 = [textCopy substringFromIndex:v21];
    [text2 setString:v36];

    goto LABEL_27;
  }

LABEL_29:
  textRunCount2 = [runCopy textRunCount];
  v39 = v47;
  v38 = v48;
  if (textRunCount < textRunCount2)
  {
    do
    {
      v40 = [runCopy textRunAtIndex:textRunCount];
      properties = [v40 properties];
      if (pointerValue)
      {
        [PBCharacterProperties readCharacterProperties:properties characterPropertyRun:pointerValue state:stateCopy];
      }

      if (pointerValue2)
      {
        [PBCharacterProperties readCharacterProperties:properties specialInfoRun:pointerValue2 state:stateCopy];
      }

      if (pointerValue3)
      {
        interactiveInfoContainerHolder = [pointerValue3 interactiveInfoContainerHolder];
        v43 = [PBHyperlink readAnimationInfoContainerHolder:interactiveInfoContainerHolder presentationState:stateCopy];
        [properties setClickHyperlink:v43];
      }

      if (pointerValue4)
      {
        interactiveInfoContainerHolder2 = [pointerValue4 interactiveInfoContainerHolder];
        v45 = [PBHyperlink readAnimationInfoContainerHolder:interactiveInfoContainerHolder2 presentationState:stateCopy];
        [properties setHoverHyperlink:v45];
      }

      ++textRunCount;
      v39 = v47;
      v38 = v48;
    }

    while (textRunCount2 != textRunCount);
  }
}

void __61__PBTextRun_readTextRun_plainText_characterAttributes_state___block_invoke()
{
  v0 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"\v"];
  v1 = +[PBTextRun readTextRun:plainText:characterAttributes:state:]::specialCharSet;
  +[PBTextRun readTextRun:plainText:characterAttributes:state:]::specialCharSet = v0;
}

@end