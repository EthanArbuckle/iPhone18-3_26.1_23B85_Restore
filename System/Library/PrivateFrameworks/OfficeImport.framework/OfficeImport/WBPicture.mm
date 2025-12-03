@interface WBPicture
+ (id)readDrawableFromReader:(id)reader textType:(int)type;
+ (void)readFrom:(id)from at:(int)at textRun:(WrdCharacterTextRun *)run paragraph:(id)paragraph to:(id)to;
@end

@implementation WBPicture

+ (void)readFrom:(id)from at:(int)at textRun:(WrdCharacterTextRun *)run paragraph:(id)paragraph to:(id)to
{
  fromCopy = from;
  paragraphCopy = paragraph;
  toCopy = to;
  if (toCopy)
  {
    var4 = run->var4;
    var5 = run->var5;
    v18 = [WDCharacterProperties alloc];
    document = [paragraphCopy document];
    v68 = [(WDCharacterProperties *)v18 initWithDocument:document];

    document2 = [paragraphCopy document];
    [WBCharacterProperties readFrom:fromCopy wrdProperties:var4 tracked:var5 document:document2 properties:v68];

    [toCopy setProperties:v68];
    textType = [paragraphCopy textType];
    WrdPictureProperties::WrdPictureProperties(v72);
    var1 = run->var1;
    atCopy = at;
    v74 = var1;
    wrdReader = [fromCopy wrdReader];
    (*(*wrdReader + 416))(wrdReader, v72);
    if (v75 <= 0x63u)
    {
      if (v75 == 98)
      {
        v70 = &unk_286ED5478;
        CsString::CsString(&v71);
        wrdReader2 = [fromCopy wrdReader];
        (*(*wrdReader2 + 432))(wrdReader2, &v70);
        v70 = &unk_286ED5478;
        CsString::~CsString(&v71);
      }

      else if (v75 != 99)
      {
        goto LABEL_10;
      }

      v24 = 0;
      goto LABEL_16;
    }

    if (v75 == 102)
    {
      v70 = &unk_286ED5478;
      CsString::CsString(&v71);
      wrdReader3 = [fromCopy wrdReader];
      (*(*wrdReader3 + 432))(wrdReader3, &v70);
      v24 = [self readDrawableFromReader:fromCopy textType:textType];
      v70 = &unk_286ED5478;
      CsString::~CsString(&v71);
      if (!v24)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    if (v75 == 100)
    {
      v24 = [self readDrawableFromReader:fromCopy textType:textType];
      if (!v24)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

LABEL_10:
    v70 = &unk_286ED5438;
    OcBinaryData::OcBinaryData(&v71);
    wrdReader4 = [fromCopy wrdReader];
    (*(*wrdReader4 + 424))(wrdReader4, &v70);
    v26 = [ESDBlipContext alloc];
    v66 = [(ESDBlipContext *)v26 initWithOffset:v71.var1 byteCount:v71.var3 stream:v71.var7 streamID:v71.var2];
    v67 = [[OADSubBlip alloc] initWithData:0 type:4];
    [(OCDDelayedNode *)v67 setDelayedContext:v66];
    v27 = objc_alloc_init(OADBlip);
    [(OADBlip *)v27 setMainSubBlip:v67];
    v28 = [[OADBlipRef alloc] initWithIndex:0 name:0 blip:v27];
    v29 = objc_alloc_init(OADImageFill);
    [(OADImageFill *)v29 setBlipRef:v28];
    v24 = objc_alloc_init(OADImage);
    imageProperties = [(OADImage *)v24 imageProperties];
    [imageProperties setImageFill:v29];

    v31 = objc_alloc_init(WDAContent);
    [(OADDrawable *)v24 setClientData:v31];
    [(WDAContent *)v31 setDrawable:v24];
    [(WDAContent *)v31 setTextType:textType];

    v70 = &unk_286ED5438;
    OcBinaryData::~OcBinaryData(&v71);
    if (!v24)
    {
LABEL_16:
      v35 = v76;
      v36 = v77;
      v37 = v78;
      v38 = v79;
      LOWORD(v8) = v80;
      LOWORD(v7) = v81;
      drawableProperties = [(OADDrawable *)v24 drawableProperties];
      orientedBounds = [drawableProperties orientedBounds];
      [orientedBounds rotation];
      v41 = [OADOrientedBounds directionCloserToVerticalThanToHorizontal:?];
      v42 = v35 / 20.0;
      v43 = v36 / 20.0;
      v44 = v37 / 20.0;
      v45 = v38 / 20.0;
      v46 = v42;
      v47 = v43;
      v48 = ((v44 * v8) / 1000.0);
      v49 = ((v45 * v7) / 1000.0);

      if (v41)
      {
        v46 = NSTransposedRectWithSameCenter(v46, v47, v48, v49);
        v47 = v50;
        v48 = v51;
        v49 = v52;
      }

      drawableProperties2 = [(OADDrawable *)v24 drawableProperties];
      orientedBounds2 = [drawableProperties2 orientedBounds];
      [orientedBounds2 setBounds:{v46, v47, v48, v49}];

      v55 = objc_opt_class();
      v56 = TSUDynamicCast(v55, v24);
      v57 = v56;
      if (!v56)
      {
        goto LABEL_31;
      }

      graphicProperties = [v56 graphicProperties];
      if ([graphicProperties hasStroke])
      {
        stroke = [graphicProperties stroke];
        if ([stroke isFillOverridden])
        {
          fill = [stroke fill];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            goto LABEL_29;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            goto LABEL_29;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            goto LABEL_29;
          }
        }
      }

      Border = WrdPictureProperties::getBorder(v72, 0);
      v62 = Border;
      if (!*(Border + 16) || !*(Border + 25))
      {
        goto LABEL_30;
      }

      stroke = objc_opt_new();
      fill = objc_opt_new();
      v63 = [OITSUColor colorWithCsColour:v62 + 8];
      v64 = [OADRgbColor rgbColorWithTSUColor:v63];

      [fill setColor:v64];
      [stroke setFill:fill];
      v65 = vcvtd_n_f64_u32(*(v62 + 25), 3uLL);
      *&v65 = v65;
      [stroke setWidth:v65];
      [graphicProperties setStroke:stroke];

LABEL_29:
LABEL_30:

LABEL_31:
      WrdPictureProperties::~WrdPictureProperties(v72);

      goto LABEL_32;
    }

LABEL_15:
    clientData = [(OADDrawable *)v24 clientData];
    [toCopy setDrawable:v24];
    [clientData setTextType:run->var1];

    goto LABEL_16;
  }

LABEL_32:
}

+ (id)readDrawableFromReader:(id)reader textType:(int)type
{
  v4 = *&type;
  readerCopy = reader;
  v6 = [[WBOfficeArtReaderState alloc] initWithClient:objc_opt_class()];
  [(WBOfficeArtReaderState *)v6 setCurrentTextType:v4];
  officeArtState = [readerCopy officeArtState];
  [readerCopy setOfficeArtState:v6];
  v31 = 4;
  v8 = [WBEscher readRootWithType:&v31 reader:readerCopy];
  v9 = v8;
  if (v8 && [v8 childCount])
  {
    v10 = [v9 childAt:0];
    officeArtState2 = [readerCopy officeArtState];
    v12 = [OABDrawable readDrawableFromObject:v10 state:officeArtState2];

    v13 = [v9 childAt:0];
    eshObject = [v13 eshObject];
    if (eshObject)
    {
      if (v15)
      {
        v16 = v15;
        v17 = 0;
        v18 = v9;
        v28 = v13;
        while (1)
        {
          v19 = dword_25D70E2E4[v17];
          if (EshOpt::isPropertySet(v16 + 16, v19))
          {
            if (*EshOpt::getProperty(v16 + 16, v19) == 1 && *(EshOpt::getProperty(v16 + 16, v19) + 2))
            {
              break;
            }
          }

          v9 = v18;
LABEL_17:
          ++v17;
          v18 = v9;
          if (v17 == 3)
          {
            goto LABEL_35;
          }
        }

        v31 = 5;
        v9 = [WBEscher readRootWithType:&v31 reader:readerCopy];

        if (!v9 || ![v9 childCount])
        {
          goto LABEL_17;
        }

        v30 = [v9 childAt:0];
        eshObject2 = [v30 eshObject];
        if ((*(*eshObject2 + 16))(eshObject2) != 61447)
        {
LABEL_33:

          goto LABEL_17;
        }

        v29 = [OABBlip readBlipFromBse:v30];
        if (v17 == 2)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_opt_class();
            graphicProperties = [v12 graphicProperties];
            stroke = [graphicProperties stroke];
            fill = [stroke fill];

LABEL_24:
            goto LABEL_26;
          }
        }

        else if (v17 == 1)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_opt_class();
            graphicProperties = [v12 graphicProperties];
            fill2 = [graphicProperties fill];
LABEL_23:
            fill = fill2;
            goto LABEL_24;
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_opt_class();
            graphicProperties = [v12 imageProperties];
            fill2 = [graphicProperties imageFill];
            goto LABEL_23;
          }
        }

        fill = 0;
LABEL_26:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          blipRef = [fill blipRef];
          [blipRef setBlip:v29];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_32;
          }

          blipRef = [fill pattern];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v24BlipRef = [blipRef blipRef];
            [v24BlipRef setBlip:v29];
          }
        }

LABEL_32:
        v13 = v28;
        goto LABEL_33;
      }
    }

LABEL_35:
  }

  else
  {
    v12 = 0;
  }

  [readerCopy setOfficeArtState:officeArtState];

  return v12;
}

@end