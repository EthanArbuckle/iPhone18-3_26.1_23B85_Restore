@interface PXOfficeArtClient
+ (int)readPlaceholderBoundsTrackFromNode:(_xmlNode *)a3;
+ (int)readPlaceholderTypeFromNode:(_xmlNode *)a3;
- (PXOfficeArtClient)initWithState:(id)a3;
- (PXPresentationState)presentationState;
- (id)readClientTextField:(_xmlNode *)a3 identity:(id)a4 paragraph:(id)a5 state:(id)a6;
- (id)readOle:(_xmlNode *)a3 state:(id)a4;
- (void)postprocessHyperlink:(id)a3 relationship:(id)a4 state:(id)a5;
- (void)readBlipExtWithURI:(id)a3 fromNode:(_xmlNode *)a4 toDrawable:(id)a5 state:(id)a6;
- (void)readClientDataFromGraphicalFramePropertiesNode:(_xmlNode *)a3 toDrawable:(id)a4 state:(id)a5;
- (void)readClientDataFromPictureNode:(_xmlNode *)a3 toImage:(id)a4 state:(id)a5;
- (void)readClientDataFromShapeNode:(_xmlNode *)a3 toShape:(id)a4 state:(id)a5;
@end

@implementation PXOfficeArtClient

- (PXPresentationState)presentationState
{
  WeakRetained = objc_loadWeakRetained(&self->mPresentationState);

  return WeakRetained;
}

- (PXOfficeArtClient)initWithState:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PXOfficeArtClient;
  v5 = [(PXOfficeArtClient *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mPresentationState, v4);
  }

  return v6;
}

- (void)readClientDataFromShapeNode:(_xmlNode *)a3 toShape:(id)a4 state:(id)a5
{
  v19 = a4;
  if (xmlStrEqual(a3->name, "sp"))
  {
    v7 = "nvSpPr";
  }

  else if (xmlStrEqual(a3->name, "cxnSp"))
  {
    v7 = "nvCxnSpPr";
  }

  else if (xmlStrEqual(a3->name, "pic"))
  {
    v7 = "nvPicPr";
  }

  else
  {
    v7 = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->mPresentationState);
  v9 = [WeakRetained PXPresentationMLNamespace];
  v10 = OCXFindChild(a3, v9, v7);

  if (v10)
  {
    v11 = objc_loadWeakRetained(&self->mPresentationState);
    v12 = [v11 PXPresentationMLNamespace];
    v13 = OCXFindChild(v10, v12, "nvPr");

    if (v13)
    {
      v14 = objc_loadWeakRetained(&self->mPresentationState);
      v15 = [v14 PXPresentationMLNamespace];
      v16 = OCXFindChild(v13, v15, "ph");

      if (v16)
      {
        v17 = [v19 ensureClientDataOfClass:objc_opt_class()];
        v18 = objc_alloc_init(PDPlaceholder);
        [v17 setPlaceholder:v18];
        -[PDPlaceholder setType:](v18, "setType:", [objc_opt_class() readPlaceholderTypeFromNode:v16]);
        [(PDPlaceholder *)v18 setIndex:CXDefaultUnsignedLongAttribute(v16, CXNoNamespace, "idx", 0)];
        -[PDPlaceholder setBoundsTrack:](v18, "setBoundsTrack:", [objc_opt_class() readPlaceholderBoundsTrackFromNode:v16]);
      }
    }
  }
}

- (void)readClientDataFromPictureNode:(_xmlNode *)a3 toImage:(id)a4 state:(id)a5
{
  v18 = a4;
  WeakRetained = objc_loadWeakRetained(&self->mPresentationState);
  v8 = [WeakRetained PXPresentationMLNamespace];
  v9 = OCXFindChild(a3, v8, "nvPicPr");

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->mPresentationState);
    v11 = [v10 PXPresentationMLNamespace];
    v12 = OCXFindChild(v9, v11, "nvPr");

    if (v12)
    {
      v13 = [v18 ensureClientDataOfClass:objc_opt_class()];
      v14 = objc_loadWeakRetained(&self->mPresentationState);
      v15 = [v14 PXPresentationMLNamespace];
      v16 = OCXFindChild(v12, v15, "ph");

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

- (void)readClientDataFromGraphicalFramePropertiesNode:(_xmlNode *)a3 toDrawable:(id)a4 state:(id)a5
{
  v15 = a4;
  WeakRetained = objc_loadWeakRetained(&self->mPresentationState);
  v8 = [WeakRetained PXPresentationMLNamespace];
  v9 = OCXFindChild(a3, v8, "nvPr");

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->mPresentationState);
    v11 = [v10 PXPresentationMLNamespace];
    v12 = OCXFindChild(v9, v11, "ph");

    if (v12)
    {
      v13 = [v15 ensureClientDataOfClass:objc_opt_class()];
      v14 = objc_alloc_init(PDPlaceholder);
      [v13 setPlaceholder:v14];
      -[PDPlaceholder setType:](v14, "setType:", [objc_opt_class() readPlaceholderTypeFromNode:v12]);
      [(PDPlaceholder *)v14 setIndex:CXDefaultUnsignedLongAttribute(v12, CXNoNamespace, "idx", 0)];
    }
  }
}

- (id)readClientTextField:(_xmlNode *)a3 identity:(id)a4 paragraph:(id)a5 state:(id)a6
{
  v7 = a4;
  v8 = a5;
  v9 = [v7 type];
  v10 = [v9 isEqualToString:@"slidenum"];

  if (v10)
  {
    v11 = [v8 addSlideNumberField];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)postprocessHyperlink:(id)a3 relationship:(id)a4 state:(id)a5
{
  v16 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v16 action];
  if ([v9 isEqualToString:@"ppaction://hlinksldjump"])
  {
    v10 = [v7 type];
    v11 = [v10 hasSuffix:@"/slide"];

    if ((v11 & 1) == 0)
    {
      [TCMessageException raise:TCInvalidFileFormatMessage];
    }

    v12 = [v7 targetLocation];
    v13 = [v8 documentState];
    v14 = [v13 slideIndexForSlideURL:v12];
    if (v14 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [TCMessageException raise:TCInvalidFileFormatMessage];
    }

    v15 = [@"ppaction://hlinksldjump?slideindex=" stringByAppendingFormat:@"%ld", v14 + 1];

    [v16 setAction:v15];
  }

  else
  {
    v15 = v9;
  }
}

- (id)readOle:(_xmlNode *)a3 state:(id)a4
{
  v36 = a4;
  WeakRetained = objc_loadWeakRetained(&self->mPresentationState);
  v6 = [WeakRetained PXPresentationMLNamespace];
  v7 = OCXFindChild(a3, v6, "oleObj");

  if (!v7)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  v8 = CXDefaultStringAttribute(v7, CXNoNamespace, "progId", 0);
  if ([OADOle isProgIDChart:v8])
  {
    v34 = v8;
    v9 = objc_autoreleasePoolPush();
    v10 = [v36 packagePart];
    v11 = [v10 package];
    v12 = [v36 OCXReadRequiredRelationshipForNode:v7 packagePart:v10];
    v13 = [v12 targetLocation];
    v14 = [v11 partForLocation:v13];

    v15 = [v14 data];
    v16 = [v36 documentState];
    v17 = [v16 cancelDelegate];

    if ([v34 hasSuffix:@".12"])
    {
      v18 = [(OCDReader *)[EXReader alloc] initWithCancelDelegate:v17];
      if ([(OCXReader *)v18 start])
      {
        [(OCDReader *)v18 setData:v15];
        v19 = [(EXReader *)v18 read];
      }

      else
      {
        v19 = 0;
      }

      v20 = 0;
    }

    else
    {
      v20 = [OABOle readFromData:v15 cancel:v17];
      v19 = 0;
    }

    objc_autoreleasePoolPop(v9);
    v21 = [v12 targetLocation];
    v8 = v34;
    [v11 resetPartForLocation:v21];

    if (v20)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v19 = 0;
  }

  v22 = objc_alloc_init(OADOle);
  v20 = v22;
  if (v19)
  {
    [(OADOle *)v22 setObject:v19];
  }

  if (v8)
  {
    [v20 setAnsiProgID:v8];
  }

LABEL_16:
  v23 = [v36 oavState];
  v37 = 0;
  CXOptionalStringAttribute(v7, CXNoNamespace, "spid", &v37);
  v24 = v37;
  if (v24)
  {
    v25 = [v23 drawableForVmlShapeId:v24];
    if (v25)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v26 = objc_loadWeakRetained(&self->mPresentationState);
    v27 = [v26 PXPresentationMLNamespace];
    v28 = OCXFindChild(v7, v27, "pic");

    if (v28)
    {
      v29 = objc_loadWeakRetained(&self->mPresentationState);
      v30 = [v29 PXPresentationMLNamespace];
      v31 = [OAXDrawable readDrawableFromXmlNode:v28 inNamespace:v30 drawingState:v36];

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
    [v23 addDualDrawable:v32];
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

- (void)readBlipExtWithURI:(id)a3 fromNode:(_xmlNode *)a4 toDrawable:(id)a5 state:(id)a6
{
  v9 = a5;
  v10 = a6;
  if ([a3 isEqualToString:@"{DAA4B4D4-6D71-4841-9C94-3DE7FCFB9230}"])
  {
    v11 = OCXFindChild(a4, PXPowerPoint2010Namespace, "media");
    v12 = objc_opt_class();
    v13 = TSUDynamicCast(v12, v9);
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

      v21 = [v10 packagePart];
      v22 = [v10 OCXReadRelationshipForNode:v11 attributeName:"embed" packagePart:v21];

      v23 = [v22 targetLocation];
      v24 = [OAXMovieContext alloc];
      v25 = [v10 packagePart];
      v26 = [v25 package];
      v27 = [(OCXDelayedMediaContext *)v24 initWithTargetLocation:v23 package:v26];

      [(OCDDelayedNode *)v16 setDelayedContext:v27];
      [(OADLinkedMediaFile *)v16 setUrl:v23];
      -[OADLinkedMediaFile setIsExternal:](v16, "setIsExternal:", [v22 targetMode] == 1);
      [v14 setMovie:v16];
    }
  }
}

+ (int)readPlaceholderTypeFromNode:(_xmlNode *)a3
{
  v3 = CXDefaultStringAttribute(a3, CXNoNamespace, "type", 0);
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

+ (int)readPlaceholderBoundsTrackFromNode:(_xmlNode *)a3
{
  NoNsProp = xmlGetNoNsProp(a3, "boundsTrack");
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