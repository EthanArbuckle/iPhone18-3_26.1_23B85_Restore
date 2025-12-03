@interface OAVImage
+ (void)readFromManager:(id)manager toImage:(id)image state:(id)state;
@end

@implementation OAVImage

+ (void)readFromManager:(id)manager toImage:(id)image state:(id)state
{
  managerCopy = manager;
  imageCopy = image;
  stateCopy = state;
  v47 = stateCopy;
  v48 = imageCopy;
  imageProperties = [imageCopy imageProperties];
  v9 = objc_alloc_init(OADImageFill);
  v46 = v9;
  imageRelId = [managerCopy imageRelId];
  packagePart = [managerCopy packagePart];
  v11 = [packagePart relationshipForIdentifier:imageRelId];

  v52 = v11;
  if ([v11 targetMode])
  {
    v12 = [OADBlipRef alloc];
    targetLocation = [v11 targetLocation];
    relativeString = [targetLocation relativeString];
    v57 = [(OADBlipRef *)v12 initWithIndex:0 name:relativeString blip:0];
  }

  else
  {
    targetLocation = [v11 targetLocation];
    v57 = [stateCopy blipRefForURL:targetLocation];
  }

  shape = [managerCopy shape];
  v16 = OCXFindChild(shape, OAVOfficeMainNamespace, "imagedata");
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

  movieRelId = [managerCopy movieRelId];
  if (movieRelId)
  {
    packagePart2 = [managerCopy packagePart];
    v38 = [packagePart2 relationshipForIdentifier:movieRelId];

    if (v38 && ![v38 targetMode])
    {
      v45 = objc_alloc_init(OADQTStubFile);
      v39 = [OAXMovieContext alloc];
      targetLocation2 = [v38 targetLocation];
      packagePart3 = [managerCopy packagePart];
      package = [packagePart3 package];
      v43 = [(OCXDelayedMediaContext *)v39 initWithTargetLocation:targetLocation2 package:package];

      [(OCDDelayedNode *)v45 setDelayedContext:v43];
      v44 = CXDefaultStringAttribute(v16, OAVOfficeDrawingNamespace, "title", 0);
      [(OADMovie *)v45 setName:v44];
      [(OADBlipRef *)v57 setName:0];
      [v48 setMovie:v45];
    }
  }

  [(OADImageFill *)v46 setBlipRef:v57, v45];
  [(OADImageFill *)v46 setTechnique:v50];
  [imageProperties setImageFill:v46];
}

@end