@interface WBPicture
+ (id)readDrawableFromReader:(id)a3 textType:(int)a4;
+ (void)readFrom:(id)a3 at:(int)a4 textRun:(WrdCharacterTextRun *)a5 paragraph:(id)a6 to:(id)a7;
@end

@implementation WBPicture

+ (void)readFrom:(id)a3 at:(int)a4 textRun:(WrdCharacterTextRun *)a5 paragraph:(id)a6 to:(id)a7
{
  v69 = a3;
  v14 = a6;
  v15 = a7;
  if (v15)
  {
    var4 = a5->var4;
    var5 = a5->var5;
    v18 = [WDCharacterProperties alloc];
    v19 = [v14 document];
    v68 = [(WDCharacterProperties *)v18 initWithDocument:v19];

    v20 = [v14 document];
    [WBCharacterProperties readFrom:v69 wrdProperties:var4 tracked:var5 document:v20 properties:v68];

    [v15 setProperties:v68];
    v21 = [v14 textType];
    WrdPictureProperties::WrdPictureProperties(v72);
    var1 = a5->var1;
    v73 = a4;
    v74 = var1;
    v23 = [v69 wrdReader];
    (*(*v23 + 416))(v23, v72);
    if (v75 <= 0x63u)
    {
      if (v75 == 98)
      {
        v70 = &unk_286ED5478;
        CsString::CsString(&v71);
        v32 = [v69 wrdReader];
        (*(*v32 + 432))(v32, &v70);
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
      v33 = [v69 wrdReader];
      (*(*v33 + 432))(v33, &v70);
      v24 = [a1 readDrawableFromReader:v69 textType:v21];
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
      v24 = [a1 readDrawableFromReader:v69 textType:v21];
      if (!v24)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

LABEL_10:
    v70 = &unk_286ED5438;
    OcBinaryData::OcBinaryData(&v71);
    v25 = [v69 wrdReader];
    (*(*v25 + 424))(v25, &v70);
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
    v30 = [(OADImage *)v24 imageProperties];
    [v30 setImageFill:v29];

    v31 = objc_alloc_init(WDAContent);
    [(OADDrawable *)v24 setClientData:v31];
    [(WDAContent *)v31 setDrawable:v24];
    [(WDAContent *)v31 setTextType:v21];

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
      v39 = [(OADDrawable *)v24 drawableProperties];
      v40 = [v39 orientedBounds];
      [v40 rotation];
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

      v53 = [(OADDrawable *)v24 drawableProperties];
      v54 = [v53 orientedBounds];
      [v54 setBounds:{v46, v47, v48, v49}];

      v55 = objc_opt_class();
      v56 = TSUDynamicCast(v55, v24);
      v57 = v56;
      if (!v56)
      {
        goto LABEL_31;
      }

      v58 = [v56 graphicProperties];
      if ([v58 hasStroke])
      {
        v59 = [v58 stroke];
        if ([v59 isFillOverridden])
        {
          v60 = [v59 fill];
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

      v59 = objc_opt_new();
      v60 = objc_opt_new();
      v63 = [OITSUColor colorWithCsColour:v62 + 8];
      v64 = [OADRgbColor rgbColorWithTSUColor:v63];

      [v60 setColor:v64];
      [v59 setFill:v60];
      v65 = vcvtd_n_f64_u32(*(v62 + 25), 3uLL);
      *&v65 = v65;
      [v59 setWidth:v65];
      [v58 setStroke:v59];

LABEL_29:
LABEL_30:

LABEL_31:
      WrdPictureProperties::~WrdPictureProperties(v72);

      goto LABEL_32;
    }

LABEL_15:
    v34 = [(OADDrawable *)v24 clientData];
    [v15 setDrawable:v24];
    [v34 setTextType:a5->var1];

    goto LABEL_16;
  }

LABEL_32:
}

+ (id)readDrawableFromReader:(id)a3 textType:(int)a4
{
  v4 = *&a4;
  v5 = a3;
  v6 = [[WBOfficeArtReaderState alloc] initWithClient:objc_opt_class()];
  [(WBOfficeArtReaderState *)v6 setCurrentTextType:v4];
  v7 = [v5 officeArtState];
  [v5 setOfficeArtState:v6];
  v31 = 4;
  v8 = [WBEscher readRootWithType:&v31 reader:v5];
  v9 = v8;
  if (v8 && [v8 childCount])
  {
    v10 = [v9 childAt:0];
    v11 = [v5 officeArtState];
    v12 = [OABDrawable readDrawableFromObject:v10 state:v11];

    v13 = [v9 childAt:0];
    v14 = [v13 eshObject];
    if (v14)
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
        v9 = [WBEscher readRootWithType:&v31 reader:v5];

        if (!v9 || ![v9 childCount])
        {
          goto LABEL_17;
        }

        v30 = [v9 childAt:0];
        v20 = [v30 eshObject];
        if ((*(*v20 + 16))(v20) != 61447)
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
            v21 = [v12 graphicProperties];
            v26 = [v21 stroke];
            v23 = [v26 fill];

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
            v21 = [v12 graphicProperties];
            v22 = [v21 fill];
LABEL_23:
            v23 = v22;
            goto LABEL_24;
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_opt_class();
            v21 = [v12 imageProperties];
            v22 = [v21 imageFill];
            goto LABEL_23;
          }
        }

        v23 = 0;
LABEL_26:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v24 = [v23 blipRef];
          [v24 setBlip:v29];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_32;
          }

          v24 = [v23 pattern];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v27 = [v24 blipRef];
            [v27 setBlip:v29];
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

  [v5 setOfficeArtState:v7];

  return v12;
}

@end