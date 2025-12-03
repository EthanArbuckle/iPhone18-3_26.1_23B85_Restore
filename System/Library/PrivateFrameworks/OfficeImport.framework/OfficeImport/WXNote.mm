@interface WXNote
+ (void)readFrom:(_xmlNode *)from to:(id)to skipNextSib:(BOOL *)sib state:(id)state;
@end

@implementation WXNote

+ (void)readFrom:(_xmlNode *)from to:(id)to skipNextSib:(BOOL *)sib state:(id)state
{
  toCopy = to;
  stateCopy = state;
  wXMainNamespace = [(OCXState *)stateCopy WXMainNamespace];
  v11 = CXRequiredLongAttribute(from, wXMainNamespace, "id");

  packagePart = [(OCXState *)stateCopy packagePart];
  if (xmlStrEqual(from->name, "footnoteReference"))
  {
    v12 = [(OCXState *)stateCopy xmlFootnoteWithID:v11];
    OCXFirstPartWithRelationshipOfTypeToPartWithFallback(packagePart, stateCopy, sel_OCXFootnotesRelationshipType);
  }

  else
  {
    v12 = [(OCXState *)stateCopy xmlEndnoteWithID:v11];
    OCXFirstPartWithRelationshipOfTypeToPartWithFallback(packagePart, stateCopy, sel_OCXEndnotesRelationshipType);
  }
  v13 = ;
  wXMainNamespace2 = [(OCXState *)stateCopy WXMainNamespace];
  v15 = CXDefaultBoolAttribute(v12, wXMainNamespace2, "suppressRef", 0);

  [toCopy setAutomaticNumbering:v15 ^ 1u];
  wXMainNamespace3 = [(OCXState *)stateCopy WXMainNamespace];
  v17 = CXDefaultBoolAttribute(from, wXMainNamespace3, "customMarkFollows", 0);

  if (([toCopy automaticNumbering] & v17) == 1)
  {
    [toCopy setAutomaticNumbering:0];
  }

  if ([toCopy automaticNumbering])
  {
    reference = [toCopy reference];
    [WXCharacterRun readFromString:@"\x02" source:from to:reference];
  }

  wxoavState = [(OCXState *)stateCopy wxoavState];
  packagePart2 = [wxoavState packagePart];
  [wxoavState setPackagePart:v13];
  drawingState = [(OCXState *)stateCopy drawingState];
  packagePart3 = [drawingState packagePart];
  [drawingState setPackagePart:v13];
  isNewSectionRequested = [(OCXState *)stateCopy isNewSectionRequested];
  [(OCXState *)stateCopy setNewSectionRequested:0];
  packagePart4 = [(OCXState *)stateCopy packagePart];
  [(OCXState *)stateCopy setPackagePart:v13];
  if (v17)
  {
    v22 = OCXNextSibling(from);
    reference2 = [toCopy reference];
    [reference2 setString:&stru_286EE1130];
    if (xmlStrEqual(v22->name, "sym"))
    {
      [WXSymbol readFrom:v22 to:reference2 state:stateCopy];
    }

    else
    {
      [WXCharacterRun readFrom:v22 to:reference2];
    }

    string = [reference2 string];
    if ([string length])
    {
    }

    else
    {
      properties = [reference2 properties];
      isSymbolCharacterOverridden = [properties isSymbolCharacterOverridden];

      if (!isSymbolCharacterOverridden)
      {
LABEL_16:

        v13 = v28;
        goto LABEL_17;
      }
    }

    *sib = 1;
    goto LABEL_16;
  }

LABEL_17:
  text = [toCopy text];
  [WXText readFrom:v12 baseStyle:0 to:text state:stateCopy];

  [wxoavState setPackagePart:packagePart2];
  [drawingState setPackagePart:packagePart3];
  [(OCXState *)stateCopy setPackagePart:packagePart4];
  [(OCXState *)stateCopy setNewSectionRequested:isNewSectionRequested];
}

@end