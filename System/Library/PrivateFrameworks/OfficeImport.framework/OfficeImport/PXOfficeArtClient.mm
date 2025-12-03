@interface PXOfficeArtClient
+ (int)readPlaceholderBoundsTrackFromNode:(_xmlNode *)node;
+ (int)readPlaceholderTypeFromNode:(_xmlNode *)node;
- (PXOfficeArtClient)initWithState:(id)state;
- (PXPresentationState)presentationState;
- (id)readClientTextField:(_xmlNode *)field identity:(id)identity paragraph:(id)paragraph state:(id)state;
- (id)readOle:(_xmlNode *)ole state:(id)state;
- (void)postprocessHyperlink:(id)hyperlink relationship:(id)relationship state:(id)state;
- (void)readBlipExtWithURI:(id)i fromNode:(_xmlNode *)node toDrawable:(id)drawable state:(id)state;
- (void)readClientDataFromGraphicalFramePropertiesNode:(_xmlNode *)node toDrawable:(id)drawable state:(id)state;
- (void)readClientDataFromPictureNode:(_xmlNode *)node toImage:(id)image state:(id)state;
- (void)readClientDataFromShapeNode:(_xmlNode *)node toShape:(id)shape state:(id)state;
@end

@implementation PXOfficeArtClient

- (PXPresentationState)presentationState
{
  WeakRetained = objc_loadWeakRetained(&self->mPresentationState);

  return WeakRetained;
}

- (PXOfficeArtClient)initWithState:(id)state
{
  stateCopy = state;
  v8.receiver = self;
  v8.super_class = PXOfficeArtClient;
  v5 = [(PXOfficeArtClient *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mPresentationState, stateCopy);
  }

  return v6;
}

- (void)readClientDataFromShapeNode:(_xmlNode *)node toShape:(id)shape state:(id)state
{
  shapeCopy = shape;
  if (xmlStrEqual(node->name, "sp"))
  {
    v7 = "nvSpPr";
  }

  else if (xmlStrEqual(node->name, "cxnSp"))
  {
    v7 = "nvCxnSpPr";
  }

  else if (xmlStrEqual(node->name, "pic"))
  {
    v7 = "nvPicPr";
  }

  else
  {
    v7 = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->mPresentationState);
  pXPresentationMLNamespace = [WeakRetained PXPresentationMLNamespace];
  v10 = OCXFindChild(node, pXPresentationMLNamespace, v7);

  if (v10)
  {
    v11 = objc_loadWeakRetained(&self->mPresentationState);
    pXPresentationMLNamespace2 = [v11 PXPresentationMLNamespace];
    v13 = OCXFindChild(v10, pXPresentationMLNamespace2, "nvPr");

    if (v13)
    {
      v14 = objc_loadWeakRetained(&self->mPresentationState);
      pXPresentationMLNamespace3 = [v14 PXPresentationMLNamespace];
      v16 = OCXFindChild(v13, pXPresentationMLNamespace3, "ph");

      if (v16)
      {
        v17 = [shapeCopy ensureClientDataOfClass:objc_opt_class()];
        v18 = objc_alloc_init(PDPlaceholder);
        [v17 setPlaceholder:v18];
        -[PDPlaceholder setType:](v18, "setType:", [objc_opt_class() readPlaceholderTypeFromNode:v16]);
        [(PDPlaceholder *)v18 setIndex:CXDefaultUnsignedLongAttribute(v16, CXNoNamespace, "idx", 0)];
        -[PDPlaceholder setBoundsTrack:](v18, "setBoundsTrack:", [objc_opt_class() readPlaceholderBoundsTrackFromNode:v16]);
      }
    }
  }
}

- (void)readClientDataFromPictureNode:(_xmlNode *)node toImage:(id)image state:(id)state
{
  imageCopy = image;
  WeakRetained = objc_loadWeakRetained(&self->mPresentationState);
  pXPresentationMLNamespace = [WeakRetained PXPresentationMLNamespace];
  v9 = OCXFindChild(node, pXPresentationMLNamespace, "nvPicPr");

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->mPresentationState);
    pXPresentationMLNamespace2 = [v10 PXPresentationMLNamespace];
    v12 = OCXFindChild(v9, pXPresentationMLNamespace2, "nvPr");

    if (v12)
    {
      v13 = [imageCopy ensureClientDataOfClass:objc_opt_class()];
      v14 = objc_loadWeakRetained(&self->mPresentationState);
      pXPresentationMLNamespace3 = [v14 PXPresentationMLNamespace];
      v16 = OCXFindChild(v12, pXPresentationMLNamespace3, "ph");

      if (v16)
      {
        v17 = objc_alloc_init(PDPlaceholder);
        [v13 setPlaceholder:v17];
        -[PDPlaceholder setType:](v17, "setType:", [objc_opt_class() readPlaceholderTypeFromNode:v16]);
        [(PDPlaceholder *)v17 setIndex:CXDefaultUnsignedLongAttribute(v16, CXNoNamespace, "idx", 0)];
      }
    }
  }
}

- (void)readClientDataFromGraphicalFramePropertiesNode:(_xmlNode *)node toDrawable:(id)drawable state:(id)state
{
  drawableCopy = drawable;
  WeakRetained = objc_loadWeakRetained(&self->mPresentationState);
  pXPresentationMLNamespace = [WeakRetained PXPresentationMLNamespace];
  v9 = OCXFindChild(node, pXPresentationMLNamespace, "nvPr");

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->mPresentationState);
    pXPresentationMLNamespace2 = [v10 PXPresentationMLNamespace];
    v12 = OCXFindChild(v9, pXPresentationMLNamespace2, "ph");

    if (v12)
    {
      v13 = [drawableCopy ensureClientDataOfClass:objc_opt_class()];
      v14 = objc_alloc_init(PDPlaceholder);
      [v13 setPlaceholder:v14];
      -[PDPlaceholder setType:](v14, "setType:", [objc_opt_class() readPlaceholderTypeFromNode:v12]);
      [(PDPlaceholder *)v14 setIndex:CXDefaultUnsignedLongAttribute(v12, CXNoNamespace, "idx", 0)];
    }
  }
}

- (id)readClientTextField:(_xmlNode *)field identity:(id)identity paragraph:(id)paragraph state:(id)state
{
  identityCopy = identity;
  paragraphCopy = paragraph;
  type = [identityCopy type];
  v10 = [type isEqualToString:@"slidenum"];

  if (v10)
  {
    addSlideNumberField = [paragraphCopy addSlideNumberField];
  }

  else
  {
    addSlideNumberField = 0;
  }

  return addSlideNumberField;
}

- (void)postprocessHyperlink:(id)hyperlink relationship:(id)relationship state:(id)state
{
  hyperlinkCopy = hyperlink;
  relationshipCopy = relationship;
  stateCopy = state;
  action = [hyperlinkCopy action];
  if ([action isEqualToString:@"ppaction://hlinksldjump"])
  {
    type = [relationshipCopy type];
    v11 = [type hasSuffix:@"/slide"];

    if ((v11 & 1) == 0)
    {
      [TCMessageException raise:TCInvalidFileFormatMessage];
    }

    targetLocation = [relationshipCopy targetLocation];
    documentState = [stateCopy documentState];
    v14 = [documentState slideIndexForSlideURL:targetLocation];
    if (v14 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [TCMessageException raise:TCInvalidFileFormatMessage];
    }

    v15 = [@"ppaction://hlinksldjump?slideindex=" stringByAppendingFormat:@"%ld", v14 + 1];

    [hyperlinkCopy setAction:v15];
  }

  else
  {
    v15 = action;
  }
}

- (id)readOle:(_xmlNode *)ole state:(id)state
{
  stateCopy = state;
  WeakRetained = objc_loadWeakRetained(&self->mPresentationState);
  pXPresentationMLNamespace = [WeakRetained PXPresentationMLNamespace];
  v7 = OCXFindChild(ole, pXPresentationMLNamespace, "oleObj");

  if (!v7)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  v8 = CXDefaultStringAttribute(v7, CXNoNamespace, "progId", 0);
  if ([OADOle isProgIDChart:v8])
  {
    v34 = v8;
    v9 = objc_autoreleasePoolPush();
    packagePart = [stateCopy packagePart];
    package = [packagePart package];
    v12 = [stateCopy OCXReadRequiredRelationshipForNode:v7 packagePart:packagePart];
    targetLocation = [v12 targetLocation];
    v14 = [package partForLocation:targetLocation];

    data = [v14 data];
    documentState = [stateCopy documentState];
    cancelDelegate = [documentState cancelDelegate];

    if ([v34 hasSuffix:@".12"])
    {
      v18 = [(OCDReader *)[EXReader alloc] initWithCancelDelegate:cancelDelegate];
      if ([(OCXReader *)v18 start])
      {
        [(OCDReader *)v18 setData:data];
        read = [(EXReader *)v18 read];
      }

      else
      {
        read = 0;
      }

      v20 = 0;
    }

    else
    {
      v20 = [OABOle readFromData:data cancel:cancelDelegate];
      read = 0;
    }

    objc_autoreleasePoolPop(v9);
    targetLocation2 = [v12 targetLocation];
    v8 = v34;
    [package resetPartForLocation:targetLocation2];

    if (v20)
    {
      goto LABEL_16;
    }
  }

  else
  {
    read = 0;
  }

  v22 = objc_alloc_init(OADOle);
  v20 = v22;
  if (read)
  {
    [(OADOle *)v22 setObject:read];
  }

  if (v8)
  {
    [v20 setAnsiProgID:v8];
  }

LABEL_16:
  oavState = [stateCopy oavState];
  v37 = 0;
  CXOptionalStringAttribute(v7, CXNoNamespace, "spid", &v37);
  v24 = v37;
  if (v24)
  {
    v25 = [oavState drawableForVmlShapeId:v24];
    if (v25)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v26 = objc_loadWeakRetained(&self->mPresentationState);
    pXPresentationMLNamespace2 = [v26 PXPresentationMLNamespace];
    v28 = OCXFindChild(v7, pXPresentationMLNamespace2, "pic");

    if (v28)
    {
      v29 = objc_loadWeakRetained(&self->mPresentationState);
      pXPresentationMLNamespace3 = [v29 PXPresentationMLNamespace];
      v31 = [OAXDrawable readDrawableFromXmlNode:v28 inNamespace:pXPresentationMLNamespace3 drawingState:stateCopy];

      v25 = v31;
      if (v31)
      {
        goto LABEL_22;
      }
    }
  }

  v25 = objc_alloc_init(OADImage);
LABEL_22:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v32 = v25;
    [(OADImage *)v32 setOle:v20];
    [oavState addDualDrawable:v32];
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

- (void)readBlipExtWithURI:(id)i fromNode:(_xmlNode *)node toDrawable:(id)drawable state:(id)state
{
  drawableCopy = drawable;
  stateCopy = state;
  if ([i isEqualToString:@"{DAA4B4D4-6D71-4841-9C94-3DE7FCFB9230}"])
  {
    v11 = OCXFindChild(node, PXPowerPoint2010Namespace, "media");
    v12 = objc_opt_class();
    v13 = TSUDynamicCast(v12, drawableCopy);
    v14 = v13;
    if (v11)
    {
      v15 = v13 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      v16 = objc_alloc_init(OADVideoFile);
      v17 = OCXFindChild(v11, PXPowerPoint2010Namespace, "trim");
      v18 = v17;
      if (v17)
      {
        v28 = 0.0;
        v29 = 0.0;
        CXOptionalDoubleAttribute(v17, CXNoNamespace, "st", &v29);
        CXOptionalDoubleAttribute(v18, CXNoNamespace, "end", &v28);
        HIDWORD(v19) = HIDWORD(v29);
        *&v19 = v29;
        [(OADMovie *)v16 setMovieStartPoint:v19];
        HIDWORD(v20) = HIDWORD(v28);
        *&v20 = v28;
        [(OADMovie *)v16 setMovieEndPoint:v20];
      }

      packagePart = [stateCopy packagePart];
      v22 = [stateCopy OCXReadRelationshipForNode:v11 attributeName:"embed" packagePart:packagePart];

      targetLocation = [v22 targetLocation];
      v24 = [OAXMovieContext alloc];
      packagePart2 = [stateCopy packagePart];
      package = [packagePart2 package];
      v27 = [(OCXDelayedMediaContext *)v24 initWithTargetLocation:targetLocation package:package];

      [(OCDDelayedNode *)v16 setDelayedContext:v27];
      [(OADLinkedMediaFile *)v16 setUrl:targetLocation];
      -[OADLinkedMediaFile setIsExternal:](v16, "setIsExternal:", [v22 targetMode] == 1);
      [v14 setMovie:v16];
    }
  }
}

+ (int)readPlaceholderTypeFromNode:(_xmlNode *)node
{
  v3 = CXDefaultStringAttribute(node, CXNoNamespace, "type", 0);
  if (!v3)
  {
    goto LABEL_7;
  }

  {
    +[PXOfficeArtClient(Private) readPlaceholderTypeFromNode:];
  }

  if (PXPlaceholderTypeEnumMap(void)::once != -1)
  {
    +[PXOfficeArtClient(Private) readPlaceholderTypeFromNode:];
  }

  v4 = [PXPlaceholderTypeEnumMap(void)::theEnumMap valueForString:v3];
  if (v4 == -130883970)
  {
LABEL_7:
    v4 = 8;
  }

  return v4;
}

+ (int)readPlaceholderBoundsTrackFromNode:(_xmlNode *)node
{
  NoNsProp = xmlGetNoNsProp(node, "boundsTrack");
  if (!NoNsProp)
  {
    return 0;
  }

  v4 = NoNsProp;
  if (xmlStrEqual(NoNsProp, "slide"))
  {
    v5 = 1;
  }

  else
  {
    v5 = 2 * (xmlStrEqual(v4, "union") != 0);
  }

  free(v4);
  return v5;
}

@end