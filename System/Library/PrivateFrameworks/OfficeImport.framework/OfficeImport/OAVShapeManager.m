@interface OAVShapeManager
- (BOOL)autoInsets;
- (BOOL)fitShapeToText;
- (BOOL)isFillOK;
- (BOOL)isFilled;
- (BOOL)isImage;
- (BOOL)isShadowOK;
- (BOOL)isShadowed;
- (BOOL)isStrokeOK;
- (BOOL)isStroked;
- (BOOL)isWordArt;
- (CGPoint)shadowOffsets;
- (OAVShapeManager)initWithShape:(_xmlNode *)a3 type:(unsigned __int16)a4 packagePart:(id)a5 state:(id)a6;
- (OAVTextBoxInsets)textInsets;
- (float)fillAngle;
- (float)fillBgAlpha;
- (float)fillFgAlpha;
- (float)fillFocus;
- (float)shadowAlpha;
- (float)strokeFgAlpha;
- (float)strokeMiterLimit;
- (float)strokeWidth;
- (id)fillBgColor;
- (id)fillFgColor;
- (id)fillGradientColors;
- (id)fillType;
- (id)imageFillId;
- (id)imageFillTitle;
- (id)imageRelId;
- (id)limo;
- (id)movieRelId;
- (id)path;
- (id)shadowColor;
- (id)shadowType;
- (id)strokeBgColor;
- (id)strokeCapStyle;
- (id)strokeCompoundType;
- (id)strokeDashStyle;
- (id)strokeEndArrowLength;
- (id)strokeEndArrowType;
- (id)strokeEndArrowWidth;
- (id)strokeFgColor;
- (id)strokeFillType;
- (id)strokeJoinStyle;
- (id)strokeStartArrowLength;
- (id)strokeStartArrowType;
- (id)strokeStartArrowWidth;
- (id)textAnchor;
- (id)textBodyRects;
- (id)textLayoutFlow;
- (id)textRotation;
- (id)textWrapStyle;
@end

@implementation OAVShapeManager

- (BOOL)isImage
{
  v2 = [(OAVShapeManager *)self imageRelId];
  v3 = [v2 length] != 0;

  return v3;
}

- (id)imageRelId
{
  v3 = OCXFindChild(self->mShape, OAVOfficeMainNamespace, "imagedata");
  if (v3)
  {
    v4 = v3;
    v5 = CXDefaultStringAttribute(v3, OAVOfficeDrawingNamespace, "relid", 0);
    if (!v5)
    {
      v6 = [(OCXReadState *)self->mOAVState OCXReadRelationshipForNode:v4 packagePart:self->mPackagePart];
      v5 = [v6 identifier];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isWordArt
{
  mType = self->mType;
  if (mType)
  {

    LOBYTE(v5) = EshShapeLib::isWordArt(mType);
  }

  else
  {
    v5 = OCXFindChild(self->mShape, OAVOfficeMainNamespace, "textpath");
    if (v5)
    {
      v6 = CXNoNamespace;

      LOBYTE(v5) = CXDefaultBoolAttribute(v5, v6, "on", 0);
    }
  }

  return v5;
}

- (id)fillType
{
  v2 = OCXFindChild(self->mShape, OAVOfficeMainNamespace, "fill");
  if (v2)
  {
    v3 = CXDefaultStringAttribute(v2, CXNoNamespace, "type", @"solid");
  }

  else
  {
    v3 = @"solid";
  }

  return v3;
}

- (BOOL)isFilled
{
  if (![(OAVShapeManager *)self isFillOK])
  {
    LOBYTE(v4) = 0;
    return v4;
  }

  isFillOn = EshShapeLib::isFillOn(self->mType, 1);
  v4 = CXDefaultBoolAttribute(self->mShape, CXNoNamespace, "filled", isFillOn);
  v5 = OCXFindChild(self->mShape, OAVOfficeMainNamespace, "fill");
  if (!v5)
  {
    return v4;
  }

  v6 = CXNoNamespace;

  return CXDefaultBoolAttribute(v5, v6, "on", v4);
}

- (BOOL)isFillOK
{
  isFillOK = EshShapeLib::isFillOK(self->mType, 1);
  v4 = OCXFindChild(self->mShape, OAVOfficeMainNamespace, "path");
  if (!v4)
  {
    return isFillOK;
  }

  v5 = CXNoNamespace;

  return CXDefaultBoolAttribute(v4, v5, "fillok", isFillOK);
}

- (id)fillFgColor
{
  v3 = CXDefaultStringAttribute(self->mShape, CXNoNamespace, "fillcolor", @"white");
  v4 = OCXFindChild(self->mShape, OAVOfficeMainNamespace, "fill");
  if (v4)
  {
    v5 = CXDefaultStringAttribute(v4, CXNoNamespace, "color", v3);

    v3 = v5;
  }

  return v3;
}

- (float)fillFgAlpha
{
  v2 = @"1.0";
  v3 = OCXFindChild(self->mShape, OAVOfficeMainNamespace, "fill");
  if (v3)
  {
    v2 = CXDefaultStringAttribute(v3, CXNoNamespace, "opacity", @"1.0");
  }

  v4 = OAVReadFraction(v2);

  return v4;
}

- (id)path
{
  v3 = CXDefaultStringAttribute(self->mShape, CXNoNamespace, "path", 0);
  v4 = OCXFindChild(self->mShape, OAVOfficeMainNamespace, "path");
  if (v4)
  {
    v5 = CXDefaultStringAttribute(v4, CXNoNamespace, "v", v3);

    v3 = v5;
  }

  return v3;
}

- (OAVTextBoxInsets)textInsets
{
  v3 = OAVReadLength(@"0.10in");
  v4 = OAVReadLength(@"0.05in");
  v5 = OAVReadLength(@"0.10in");
  v6 = OAVReadLength(@"0.05in");
  v7 = OCXFindChild(self->mShape, OAVOfficeMainNamespace, "textbox");
  if (v7)
  {
    v8 = CXDefaultStringAttribute(v7, CXNoNamespace, "inset", 0);
    v9 = v8;
    if (v8)
    {
      v10 = [v8 componentsSeparatedByString:{@", "}];
      for (i = 0; [v10 count] > i; ++i)
      {
        v12 = [v10 objectAtIndex:i];
        v13 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
        v14 = [v12 stringByTrimmingCharactersInSet:v13];

        if ([(NSString *)v14 length])
        {
          v15 = OAVReadLength(v14);
          if (i > 1)
          {
            if (i == 2)
            {
              v5 = v15;
            }

            else if (i == 3)
            {
              v6 = v15;
            }
          }

          else if (i)
          {
            if (i == 1)
            {
              v4 = v15;
            }
          }

          else
          {
            v3 = v15;
          }
        }
      }
    }
  }

  v16 = v3;
  v17 = v4;
  v18 = v5;
  v19 = v6;
  result.var3 = v19;
  result.var2 = v18;
  result.var1 = v17;
  result.var0 = v16;
  return result;
}

- (id)textLayoutFlow
{
  v2 = [(NSDictionary *)self->mTextBoxStyle objectForKey:@"layout-flow"];
  if (!v2)
  {
    v2 = @"horizontal";
  }

  return v2;
}

- (BOOL)fitShapeToText
{
  v2 = [(NSDictionary *)self->mTextBoxStyle objectForKey:@"mso-fit-shape-to-text"];
  v3 = [v2 isEqualToString:@"t"];

  return v3;
}

- (id)textAnchor
{
  v2 = [(NSDictionary *)self->mShapeStyle objectForKey:@"v-text-anchor"];
  if (!v2)
  {
    v2 = @"top";
  }

  return v2;
}

- (id)strokeFgColor
{
  v3 = CXDefaultStringAttribute(self->mShape, CXNoNamespace, "strokecolor", @"black");
  v4 = OCXFindChild(self->mShape, OAVOfficeMainNamespace, "stroke");
  if (v4)
  {
    v5 = CXDefaultStringAttribute(v4, CXNoNamespace, "color", v3);

    v3 = v5;
  }

  return v3;
}

- (float)strokeFgAlpha
{
  v2 = @"1.0";
  v3 = OCXFindChild(self->mShape, OAVOfficeMainNamespace, "stroke");
  if (v3)
  {
    v2 = CXDefaultStringAttribute(v3, CXNoNamespace, "opacity", @"1.0");
  }

  v4 = OAVReadFraction(v2);

  return v4;
}

- (BOOL)isStroked
{
  if (![(OAVShapeManager *)self isStrokeOK])
  {
    LOBYTE(v4) = 0;
    return v4;
  }

  isStrokeOn = EshShapeLib::isStrokeOn(self->mType, 1);
  v4 = CXDefaultBoolAttribute(self->mShape, CXNoNamespace, "stroked", isStrokeOn);
  v5 = OCXFindChild(self->mShape, OAVOfficeMainNamespace, "stroke");
  if (!v5)
  {
    return v4;
  }

  v6 = CXNoNamespace;

  return CXDefaultBoolAttribute(v5, v6, "on", v4);
}

- (BOOL)isStrokeOK
{
  isStrokeOK = EshShapeLib::isStrokeOK(self->mType, 1);
  v4 = OCXFindChild(self->mShape, OAVOfficeMainNamespace, "path");
  if (!v4)
  {
    return isStrokeOK;
  }

  v5 = CXNoNamespace;

  return CXDefaultBoolAttribute(v4, v5, "strokeok", isStrokeOK);
}

- (id)strokeFillType
{
  v2 = OCXFindChild(self->mShape, OAVOfficeMainNamespace, "stroke");
  if (v2)
  {
    v3 = CXDefaultStringAttribute(v2, CXNoNamespace, "filltype", @"solid");
  }

  else
  {
    v3 = @"solid";
  }

  return v3;
}

- (id)strokeDashStyle
{
  v2 = OCXFindChild(self->mShape, OAVOfficeMainNamespace, "stroke");
  if (v2)
  {
    v3 = CXDefaultStringAttribute(v2, CXNoNamespace, "dashstyle", @"solid");
  }

  else
  {
    v3 = @"solid";
  }

  return v3;
}

- (id)strokeJoinStyle
{
  v2 = OCXFindChild(self->mShape, OAVOfficeMainNamespace, "stroke");
  if (v2)
  {
    v3 = CXDefaultStringAttribute(v2, CXNoNamespace, "joinstyle", @"round");
  }

  else
  {
    v3 = @"round";
  }

  return v3;
}

- (id)strokeStartArrowType
{
  v2 = OCXFindChild(self->mShape, OAVOfficeMainNamespace, "stroke");
  if (v2)
  {
    v3 = CXDefaultStringAttribute(v2, CXNoNamespace, "startarrow", @"none");
  }

  else
  {
    v3 = @"none";
  }

  return v3;
}

- (id)strokeStartArrowWidth
{
  v2 = OCXFindChild(self->mShape, OAVOfficeMainNamespace, "stroke");
  if (v2)
  {
    v3 = CXDefaultStringAttribute(v2, CXNoNamespace, "startarrowwidth", @"medium");
  }

  else
  {
    v3 = @"medium";
  }

  return v3;
}

- (id)strokeStartArrowLength
{
  v2 = OCXFindChild(self->mShape, OAVOfficeMainNamespace, "stroke");
  if (v2)
  {
    v3 = CXDefaultStringAttribute(v2, CXNoNamespace, "startarrowlength", @"medium");
  }

  else
  {
    v3 = @"medium";
  }

  return v3;
}

- (id)strokeEndArrowType
{
  v2 = OCXFindChild(self->mShape, OAVOfficeMainNamespace, "stroke");
  if (v2)
  {
    v3 = CXDefaultStringAttribute(v2, CXNoNamespace, "endarrow", @"none");
  }

  else
  {
    v3 = @"none";
  }

  return v3;
}

- (id)strokeEndArrowWidth
{
  v2 = OCXFindChild(self->mShape, OAVOfficeMainNamespace, "stroke");
  if (v2)
  {
    v3 = CXDefaultStringAttribute(v2, CXNoNamespace, "endarrowwidth", @"medium");
  }

  else
  {
    v3 = @"medium";
  }

  return v3;
}

- (id)strokeEndArrowLength
{
  v2 = OCXFindChild(self->mShape, OAVOfficeMainNamespace, "stroke");
  if (v2)
  {
    v3 = CXDefaultStringAttribute(v2, CXNoNamespace, "endarrowlength", @"medium");
  }

  else
  {
    v3 = @"medium";
  }

  return v3;
}

- (float)strokeWidth
{
  v3 = CXDefaultStringAttribute(self->mShape, CXNoNamespace, "strokeweight", @"0.75pt");
  v4 = OCXFindChild(self->mShape, OAVOfficeMainNamespace, "stroke");
  if (v4)
  {
    v5 = CXDefaultStringAttribute(v4, CXNoNamespace, "weight", v3);

    v3 = v5;
  }

  v6 = OAVReadLength(v3);

  return v6;
}

- (id)strokeCapStyle
{
  v2 = OCXFindChild(self->mShape, OAVOfficeMainNamespace, "stroke");
  if (v2)
  {
    v3 = CXDefaultStringAttribute(v2, CXNoNamespace, "endcap", @"flat");
  }

  else
  {
    v3 = @"flat";
  }

  return v3;
}

- (id)strokeCompoundType
{
  v2 = OCXFindChild(self->mShape, OAVOfficeMainNamespace, "stroke");
  if (v2)
  {
    v3 = CXDefaultStringAttribute(v2, CXNoNamespace, "linestyle", @"single");
  }

  else
  {
    v3 = @"single";
  }

  return v3;
}

- (BOOL)isShadowed
{
  if (![(OAVShapeManager *)self isShadowOK])
  {
    return 0;
  }

  v3 = OCXFindChild(self->mShape, OAVOfficeMainNamespace, "shadow");
  if (!v3)
  {
    return 0;
  }

  v4 = CXNoNamespace;

  return CXDefaultBoolAttribute(v3, v4, "on", 0);
}

- (BOOL)isShadowOK
{
  isShadowOK = EshShapeLib::isShadowOK(self->mType, 1);
  v4 = OCXFindChild(self->mShape, OAVOfficeMainNamespace, "path");
  if (!v4)
  {
    return isShadowOK;
  }

  v5 = CXNoNamespace;

  return CXDefaultBoolAttribute(v4, v5, "shadowok", isShadowOK);
}

- (id)shadowColor
{
  v2 = OCXFindChild(self->mShape, OAVOfficeMainNamespace, "shadow");
  if (v2)
  {
    v3 = CXDefaultStringAttribute(v2, CXNoNamespace, "color", @"#808080");
  }

  else
  {
    v3 = @"#808080";
  }

  return v3;
}

- (float)shadowAlpha
{
  v2 = @"1.0";
  v3 = OCXFindChild(self->mShape, OAVOfficeMainNamespace, "shadow");
  if (v3)
  {
    v2 = CXDefaultStringAttribute(v3, CXNoNamespace, "opacity", @"1.0");
  }

  v4 = OAVReadFraction(v2);

  return v4;
}

- (CGPoint)shadowOffsets
{
  v2 = OCXFindChild(self->mShape, OAVOfficeMainNamespace, "shadow");
  if (v2)
  {
    v3 = CXDefaultStringAttribute(v2, CXNoNamespace, "offset", @"2pt,2pt");
  }

  else
  {
    v3 = @"2pt,2pt";
  }

  v4 = [(__CFString *)v3 componentsSeparatedByString:@", "];
  v5 = [v4 objectAtIndex:0];
  v6 = OAVReadLength(v5);

  v7 = 2.0;
  if ([v4 count] >= 2)
  {
    v8 = [v4 objectAtIndex:1];
    v9 = OAVReadLength(v8);

    v7 = v9;
  }

  v10 = v6;
  v11 = v7;
  result.y = v11;
  result.x = v10;
  return result;
}

- (id)movieRelId
{
  mShape = self->mShape;
  v4 = [(OAVReadState *)self->mOAVState oaxState];
  v5 = [v4 OAXWordProcessingMLNamespace];
  v6 = OCXFindChild(mShape, v5, "movie");

  if (v6)
  {
    v7 = [(OAVReadState *)self->mOAVState oaxState];
    v8 = [v7 OAXWordProcessingMLNamespace];
    v9 = CXDefaultStringAttribute(v6, v8, "relid", 0);

    if (!v9)
    {
      v10 = [(OCXReadState *)self->mOAVState OCXReadRelationshipForNode:v6 packagePart:self->mPackagePart];
      v9 = [v10 identifier];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (float)fillAngle
{
  v2 = @"0";
  v3 = OCXFindChild(self->mShape, OAVOfficeMainNamespace, "fill");
  if (v3)
  {
    v2 = CXDefaultStringAttribute(v3, CXNoNamespace, "angle", @"0");
  }

  v4 = OAVReadAngle(v2);

  return v4;
}

- (float)fillFocus
{
  v2 = @"0";
  v3 = OCXFindChild(self->mShape, OAVOfficeMainNamespace, "fill");
  if (v3)
  {
    v2 = CXDefaultStringAttribute(v3, CXNoNamespace, "focus", @"0");
  }

  v4 = OAVReadFraction(v2);

  return v4;
}

- (id)fillBgColor
{
  v2 = OCXFindChild(self->mShape, OAVOfficeMainNamespace, "fill");
  if (v2)
  {
    v3 = CXDefaultStringAttribute(v2, CXNoNamespace, "color2", @"white");
  }

  else
  {
    v3 = @"white";
  }

  return v3;
}

- (id)fillGradientColors
{
  v2 = OCXFindChild(self->mShape, OAVOfficeMainNamespace, "fill");
  if (v2)
  {
    v2 = CXDefaultStringAttribute(v2, CXNoNamespace, "colors", 0);
  }

  return v2;
}

- (float)fillBgAlpha
{
  v2 = @"1.0";
  v3 = OCXFindChild(self->mShape, OAVOfficeMainNamespace, "fill");
  if (v3)
  {
    v2 = CXDefaultStringAttribute(v3, OAVOfficeDrawingNamespace, "opacity2", @"1.0");
  }

  v4 = OAVReadFraction(v2);

  return v4;
}

- (id)imageFillId
{
  v3 = OCXFindChild(self->mShape, OAVOfficeMainNamespace, "fill");
  if (v3)
  {
    v4 = v3;
    v5 = CXDefaultStringAttribute(v3, OAVOfficeDrawingNamespace, "relid", 0);
    if (!v5)
    {
      v6 = [(OCXReadState *)self->mOAVState OCXReadRelationshipForNode:v4 packagePart:self->mPackagePart];
      v5 = [v6 identifier];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)textRotation
{
  v2 = [(NSDictionary *)self->mTextBoxStyle objectForKey:@"mso-rotate"];
  if (!v2)
  {
    v2 = @"0";
  }

  return v2;
}

- (id)textWrapStyle
{
  v2 = [(NSDictionary *)self->mShapeStyle objectForKey:@"mso-wrap-style"];
  if (!v2)
  {
    v2 = @"square";
  }

  return v2;
}

- (id)limo
{
  v2 = OCXFindChild(self->mShape, OAVOfficeMainNamespace, "path");
  if (v2)
  {
    v2 = CXDefaultStringAttribute(v2, CXNoNamespace, "limo", 0);
  }

  return v2;
}

- (id)textBodyRects
{
  v2 = OCXFindChild(self->mShape, OAVOfficeMainNamespace, "path");
  if (v2)
  {
    v2 = CXDefaultStringAttribute(v2, CXNoNamespace, "TextBodyrect", 0);
  }

  return v2;
}

- (OAVShapeManager)initWithShape:(_xmlNode *)a3 type:(unsigned __int16)a4 packagePart:(id)a5 state:(id)a6
{
  v11 = a5;
  v12 = a6;
  v24.receiver = self;
  v24.super_class = OAVShapeManager;
  v13 = [(OAVShapeManager *)&v24 init];
  v14 = v13;
  if (v13)
  {
    v13->mShape = a3;
    v13->mType = a4;
    objc_storeStrong(&v13->mPackagePart, a5);
    v15 = CXRequiredStringAttribute(a3, CXNoNamespace, "style");
    v16 = OAVReadComposite(v15);
    mShapeStyle = v14->mShapeStyle;
    v14->mShapeStyle = v16;

    v18 = OCXFindChild(v14->mShape, OAVOfficeMainNamespace, "textbox");
    if (v18)
    {
      v19 = CXDefaultStringAttribute(v18, CXNoNamespace, "style", 0);
      v20 = v19;
      if (v19)
      {
        v21 = OAVReadComposite(v19);
        mTextBoxStyle = v14->mTextBoxStyle;
        v14->mTextBoxStyle = v21;
      }
    }

    objc_storeStrong(&v14->mOAVState, a6);
  }

  return v14;
}

- (id)imageFillTitle
{
  v2 = OCXFindChild(self->mShape, OAVOfficeMainNamespace, "fill");
  if (v2)
  {
    v2 = CXDefaultStringAttribute(v2, OAVOfficeDrawingNamespace, "title", 0);
  }

  return v2;
}

- (id)strokeBgColor
{
  v2 = OCXFindChild(self->mShape, OAVOfficeMainNamespace, "stroke");
  if (v2)
  {
    v3 = CXDefaultStringAttribute(v2, CXNoNamespace, "color2", @"white");
  }

  else
  {
    v3 = @"white";
  }

  return v3;
}

- (float)strokeMiterLimit
{
  v2 = @"8.0";
  v3 = OCXFindChild(self->mShape, OAVOfficeMainNamespace, "stroke");
  if (v3)
  {
    v2 = CXDefaultStringAttribute(v3, CXNoNamespace, "miterlimit", @"8.0");
  }

  v4 = OAVReadFraction(v2);

  return v4;
}

- (id)shadowType
{
  v2 = OCXFindChild(self->mShape, OAVOfficeMainNamespace, "shadow");
  if (v2)
  {
    v3 = CXDefaultStringAttribute(v2, CXNoNamespace, "type", @"single");
  }

  else
  {
    v3 = @"single";
  }

  return v3;
}

- (BOOL)autoInsets
{
  v2 = CXDefaultStringAttribute(self->mShape, CXNoNamespace, "insetmode", 0);
  v3 = [v2 isEqualToString:@"auto"];

  return v3;
}

@end