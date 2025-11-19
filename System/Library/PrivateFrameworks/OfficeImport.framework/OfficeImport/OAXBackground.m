@interface OAXBackground
+ (id)readBackgroundFromParentNode:(_xmlNode *)a3 inNamespace:(id)a4 state:(id)a5;
@end

@implementation OAXBackground

+ (id)readBackgroundFromParentNode:(_xmlNode *)a3 inNamespace:(id)a4 state:(id)a5
{
  v7 = a4;
  v8 = a5;
  v25 = 0;
  v9 = OCXFindChild(a3, v7, "bg");
  if (!v9)
  {
    v11 = 0;
    goto LABEL_19;
  }

  v24 = 0;
  v10 = [OAXStyleMatrix readReferenceFromParentNode:v9 name:"bgRef" inNamespace:v7 color:&v24 index:&v25];
  v11 = v24;
  if (!v10)
  {
    v17 = OCXFindChild(v9, v7, "bgPr");
    if (v17)
    {
      v18 = OCXFirstChild(v17);
      v9 = 0;
      v14 = 0;
      while (1)
      {
        if (!v18)
        {
          goto LABEL_20;
        }

        if (v14)
        {
          if (v9)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v19 = [v8 packagePart];
          v14 = [OAXFill readFillFromXmlNode:v18 packagePart:v19 drawingState:v8];

          if (v9)
          {
            goto LABEL_17;
          }
        }

        if (xmlStrEqual(v18->name, "effectLst"))
        {
          v20 = [v8 packagePart];
          v9 = [OAXEffect readEffectsFromXmlNode:v18 packagePart:v20 drawingState:v8];
        }

        else
        {
          v9 = 0;
        }

LABEL_17:
        v18 = OCXNextSibling(v18);
      }
    }

    v9 = 0;
LABEL_19:
    v14 = 0;
    goto LABEL_20;
  }

  v12 = [v8 styleMatrix];
  v13 = [v12 bgFillAtIndex:v25];
  v14 = [v13 copy];

  v9 = 0;
  if (v14 && v11)
  {
    [v14 setStyleColor:v11];
    v15 = 0;
    v9 = 0;
    v16 = 1;
    goto LABEL_21;
  }

LABEL_20:
  v16 = v14 != 0;
  v15 = v9 != 0;
  if (!(v14 | v9))
  {
    v14 = 0;
    v9 = 0;
    v22 = 0;
    goto LABEL_26;
  }

LABEL_21:
  v21 = objc_alloc_init(OADBackgroundProperties);
  v22 = v21;
  if (v16)
  {
    [(OADBackgroundProperties *)v21 setFill:v14];
  }

  if (v15)
  {
    [(OADBackgroundProperties *)v22 setEffects:v9];
  }

LABEL_26:

  return v22;
}

@end