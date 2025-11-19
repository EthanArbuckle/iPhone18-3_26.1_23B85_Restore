@interface OAVImage
+ (void)readFromManager:(id)a3 toImage:(id)a4 state:(id)a5;
@end

@implementation OAVImage

+ (void)readFromManager:(id)a3 toImage:(id)a4 state:(id)a5
{
  v58 = a3;
  v7 = a4;
  v8 = a5;
  v47 = v8;
  v48 = v7;
  v51 = [v7 imageProperties];
  v9 = objc_alloc_init(OADImageFill);
  v46 = v9;
  v53 = [v58 imageRelId];
  v10 = [v58 packagePart];
  v11 = [v10 relationshipForIdentifier:v53];

  v52 = v11;
  if ([v11 targetMode])
  {
    v12 = [OADBlipRef alloc];
    v13 = [v11 targetLocation];
    v14 = [v13 relativeString];
    v57 = [(OADBlipRef *)v12 initWithIndex:0 name:v14 blip:0];
  }

  else
  {
    v13 = [v11 targetLocation];
    v57 = [v8 blipRefForURL:v13];
  }

  v15 = [v58 shape];
  v16 = OCXFindChild(v15, OAVOfficeMainNamespace, "imagedata");
  v50 = objc_alloc_init(OADStretchTechnique);
  v49 = CXDefaultStringAttribute(v16, CXNoNamespace, "cropleft", 0);
  v56 = CXDefaultStringAttribute(v16, CXNoNamespace, "croptop", 0);
  v55 = CXDefaultStringAttribute(v16, CXNoNamespace, "cropright", 0);
  v54 = CXDefaultStringAttribute(v16, CXNoNamespace, "cropbottom", 0);
  if (v49 || v56 || v55 || v54)
  {
    v17 = objc_alloc_init(OADRelativeRect);
    if (v49)
    {
      *&v18 = OAVReadFraction(v49);
      [(OADRelativeRect *)v17 setLeft:v18];
    }

    if (v55)
    {
      *&v19 = OAVReadFraction(v55);
      [(OADRelativeRect *)v17 setRight:v19];
    }

    if (v56)
    {
      *&v20 = OAVReadFraction(v56);
      [(OADRelativeRect *)v17 setTop:v20];
    }

    if (v54)
    {
      *&v21 = OAVReadFraction(v54);
      [(OADRelativeRect *)v17 setBottom:v21];
    }

    [(OADImageFill *)v9 setSourceRect:v17];
  }

  v22 = CXDefaultStringAttribute(v16, CXNoNamespace, "gain", 0);
  v23 = CXDefaultStringAttribute(v16, CXNoNamespace, "blacklevel", 0);
  if (v22 | v23)
  {
    v24 = objc_alloc_init(OADLuminanceEffect);
    if (v22)
    {
      *&v25 = OAVReadFraction(v22);
      if (*&v25 <= 1.0)
      {
        *&v25 = *&v25 + -1.0;
      }

      else
      {
        *&v25 = 1.0 - (1.0 / *&v25);
      }

      [(OADLuminanceEffect *)v24 setContrast:v25];
    }

    if (v23)
    {
      v26 = OAVReadFraction(v23);
      *&v27 = v26 + v26;
      [(OADLuminanceEffect *)v24 setBrightness:v27];
    }

    [(OADBlipRef *)v57 addEffect:v24];
  }

  if (CXDefaultBoolAttribute(v16, CXNoNamespace, "grayscale", 0))
  {
    v28 = objc_alloc_init(OADGrayscaleEffect);
    [(OADBlipRef *)v57 addEffect:v28];
  }

  if (CXDefaultBoolAttribute(v16, CXNoNamespace, "bilevel", 0))
  {
    v29 = objc_alloc_init(OADBiLevelEffect);
    LODWORD(v30) = 0.5;
    [(OADBiLevelEffect *)v29 setThreshold:v30];
    [(OADBlipRef *)v57 addEffect:v29];
  }

  v31 = CXDefaultStringAttribute(v16, CXNoNamespace, "chromakey", 0);
  if (v31)
  {
    LODWORD(v32) = 1.0;
    v33 = [OAVColor readColorFromAttribute:v31 alpha:0 manager:v32];
    v34 = [OAVColor readColorFromAttribute:v31 alpha:0 manager:0.0];
    v35 = objc_alloc_init(OADColorChangeEffect);
    [(OADColorChangeEffect *)v35 setFromColor:v33];
    [(OADColorChangeEffect *)v35 setToColor:v34];
    [(OADBlipRef *)v57 addEffect:v35];
  }

  v36 = [v58 movieRelId];
  if (v36)
  {
    v37 = [v58 packagePart];
    v38 = [v37 relationshipForIdentifier:v36];

    if (v38 && ![v38 targetMode])
    {
      v45 = objc_alloc_init(OADQTStubFile);
      v39 = [OAXMovieContext alloc];
      v40 = [v38 targetLocation];
      v41 = [v58 packagePart];
      v42 = [v41 package];
      v43 = [(OCXDelayedMediaContext *)v39 initWithTargetLocation:v40 package:v42];

      [(OCDDelayedNode *)v45 setDelayedContext:v43];
      v44 = CXDefaultStringAttribute(v16, OAVOfficeDrawingNamespace, "title", 0);
      [(OADMovie *)v45 setName:v44];
      [(OADBlipRef *)v57 setName:0];
      [v48 setMovie:v45];
    }
  }

  [(OADImageFill *)v46 setBlipRef:v57, v45];
  [(OADImageFill *)v46 setTechnique:v50];
  [v51 setImageFill:v46];
}

@end