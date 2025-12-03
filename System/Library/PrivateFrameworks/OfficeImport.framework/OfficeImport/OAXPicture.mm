@interface OAXPicture
+ (id)GifSubBlip:(id)blip drawingState:(id)state;
+ (id)readFromXmlNode:(_xmlNode *)node inNamespace:(id)namespace drawingState:(id)state;
+ (void)mapImageWithGifAsMovie:(id)movie xmlNode:(_xmlNode *)node drawingState:(id)state;
+ (void)readNonVisualPropertiesFromXmlNode:(_xmlNode *)node inNamespace:(id)namespace toDrawable:(id)drawable drawingState:(id)state;
@end

@implementation OAXPicture

+ (id)readFromXmlNode:(_xmlNode *)node inNamespace:(id)namespace drawingState:(id)state
{
  namespaceCopy = namespace;
  stateCopy = state;
  v10 = objc_alloc_init(OADImage);
  [OAXDrawable readNonVisualPropertiesFromDrawableXmlNode:node inNamespace:namespaceCopy visualNodeName:"nvPicPr" toDrawable:v10 drawingState:stateCopy];
  v11 = OCXFindChild(node, namespaceCopy, "nvPicPr");
  if (!v11)
  {
    [TCMessageException raise:OABadFormat];
  }

  [OAXPicture readNonVisualPropertiesFromXmlNode:v11 inNamespace:namespaceCopy toDrawable:v10 drawingState:stateCopy];
  v12 = OCXFindChild(node, namespaceCopy, "spPr");
  if (!v12)
  {
    [TCMessageException raise:OABadFormat];
  }

  graphicProperties = [(OADGraphic *)v10 graphicProperties];
  [OAXGraphic readPropertiesFromXmlNode:v12 graphicProperties:graphicProperties drawingState:stateCopy];

  v14 = OCXFindChild(node, namespaceCopy, "blipFill");
  if (!v14)
  {
    [TCMessageException raise:OABadFormat];
  }

  packagePart = [stateCopy packagePart];
  v16 = [OAXFill readImageFillFromXmlNode:v14 packagePart:packagePart forDrawable:v10 drawingState:stateCopy];

  imageProperties = [(OADImage *)v10 imageProperties];
  [imageProperties setImageFill:v16];

  [OAXTransform2D readFromParentXmlNode:v12 inNamespace:namespaceCopy toDrawable:v10 drawingState:stateCopy];
  v18 = [OAXGeometry readFromParentXmlNode:v12 drawingState:stateCopy];
  [(OADImage *)v10 setGeometry:v18];

  client = [stateCopy client];
  [client readClientDataFromPictureNode:node toImage:v10 state:stateCopy];

  movie = [(OADImage *)v10 movie];

  if (!movie)
  {
    [self mapImageWithGifAsMovie:v10 xmlNode:v14 drawingState:stateCopy];
  }

  return v10;
}

+ (void)readNonVisualPropertiesFromXmlNode:(_xmlNode *)node inNamespace:(id)namespace toDrawable:(id)drawable drawingState:(id)state
{
  namespaceCopy = namespace;
  drawableCopy = drawable;
  stateCopy = state;
  v11 = OCXFindChild(node, namespaceCopy, "cNvPicPr");
  if (v11)
  {
    oAXMainNamespace = [stateCopy OAXMainNamespace];
    v13 = OCXFindChild(v11, oAXMainNamespace, "picLocks");

    if (v13)
    {
      v14 = CXDefaultBoolAttribute(v13, CXNoNamespace, "noChangeAspect", 0);
      drawableProperties = [drawableCopy drawableProperties];
      [drawableProperties setAspectRatioLocked:v14];
    }

    v16 = OCXFindChild(node, namespaceCopy, "cNvPr");
    v17 = v16;
    if (v16)
    {
      v56 = 0;
      v18 = CXOptionalStringAttribute(v16, CXNoNamespace, "descr", &v56);
      v19 = v56;
      v20 = v19;
      if (v18 && [v19 hasPrefix:@"movie::"])
      {
        v21 = [v20 substringFromIndex:{objc_msgSend(@"movie::", "length")}];
        v22 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v21];
        v23 = objc_alloc_init(OADGenericLinkedMediaFile);
        [(OADLinkedMediaFile *)v23 setUrl:v22];
        [(OADLinkedMediaFile *)v23 setIsExternal:1];
        v24 = [(OCXDelayedMediaContext *)[OAXMovieContext alloc] initWithTargetLocation:v22 package:0];
        [(OCDDelayedNode *)v23 setDelayedContext:v24];
        [drawableCopy setMovie:v23];
      }

      v55 = 0;
      v25 = CXOptionalStringAttribute(v17, CXNoNamespace, "name", &v55);
      v26 = v55;
      if (v25)
      {
        drawableProperties2 = [drawableCopy drawableProperties];
        [drawableProperties2 setAltDescription:v26];
      }
    }

    v28 = OCXFindChild(node, namespaceCopy, "nvPr");
    v29 = v28;
    if (v28)
    {
      for (i = OCXFirstChild(v28); i; i = OCXNextSibling(i))
      {
        oAXMainNamespace2 = [stateCopy OAXMainNamespace];
        v32 = [oAXMainNamespace2 containsNode:i];

        if (v32)
        {
          if (xmlStrEqual(i->name, "wavAudioFile"))
          {
            packagePart = [stateCopy packagePart];
            v37 = [stateCopy OCXReadRelationshipForNode:i attributeName:"embed" packagePart:packagePart];

            v39 = [OAXMovieContext alloc];
            targetLocation = [v37 targetLocation];
            packagePart2 = [stateCopy packagePart];
            package = [packagePart2 package];
            v43 = [(OCXDelayedMediaContext *)v39 initWithTargetLocation:targetLocation package:package];

            targetLocation2 = CXDefaultStringAttribute(i, CXNoNamespace, "name", 0);
            v45 = objc_alloc_init(OADSound);
            [(OCDDelayedNode *)v45 setDelayedContext:v43];
            [(OADSound *)v45 setName:targetLocation2];
            client = objc_alloc_init(OADOle);
            [(OADOle *)client setObject:v45];
            [drawableCopy setOle:client];
            goto LABEL_22;
          }

          v33 = xmlStrEqual(i->name, "audioFile");
          v34 = off_2799C5710;
          if (v33 || (v35 = xmlStrEqual(i->name, "videoFile"), v34 = off_2799C5760, v35) || (v36 = xmlStrEqual(i->name, "quickTimeFile"), v34 = off_2799C5748, v36))
          {
            v37 = objc_alloc_init(*v34);
            if (v37)
            {
              packagePart3 = [stateCopy packagePart];
              v43 = [stateCopy OCXReadRelationshipForNode:i attributeName:"link" packagePart:packagePart3];

              targetLocation2 = [(OAXMovieContext *)v43 targetLocation];
              if (targetLocation2)
              {
                v48 = [OAXMovieContext alloc];
                packagePart4 = [stateCopy packagePart];
                package2 = [packagePart4 package];
                v45 = [(OCXDelayedMediaContext *)v48 initWithTargetLocation:targetLocation2 package:package2];

                [v37 setDelayedContext:v45];
                [v37 setUrl:targetLocation2];
                [v37 setIsExternal:{-[OAXMovieContext targetMode](v43, "targetMode") == 1}];
                [drawableCopy setMovie:v37];
LABEL_25:

LABEL_26:
                break;
              }

              v51 = OCXFirstChildNamed(v29, "extLst");
              if (!v51)
              {
                goto LABEL_26;
              }

              v52 = OCXFirstChildNamed(v51, "ext");
              v53 = v52;
              if (!v52)
              {
                goto LABEL_26;
              }

              v45 = CXDefaultStringAttribute(v52, CXNoNamespace, "uri", 0);
              client = [stateCopy client];
              [(OADOle *)client readBlipExtWithURI:v45 fromNode:v53 toDrawable:drawableCopy state:stateCopy];
LABEL_22:

              goto LABEL_25;
            }
          }
        }
      }
    }
  }
}

+ (id)GifSubBlip:(id)blip drawingState:(id)state
{
  stateCopy = state;
  blipRef = [blip blipRef];
  blip = [blipRef blip];
  targetBlipCollection = [stateCopy targetBlipCollection];
  blips = [targetBlipCollection blips];

  index = [blipRef index];
  if (blip)
  {
    goto LABEL_2;
  }

  v14 = index;
  if (![blips count] || objc_msgSend(blips, "count") <= (v14 - 1))
  {
    blip = 0;
LABEL_11:
    v12 = 0;
    goto LABEL_15;
  }

  blip = [blips objectAtIndexedSubscript:?];
  if (!blip)
  {
    goto LABEL_11;
  }

LABEL_2:
  mainSubBlip = [blip mainSubBlip];
  if ([mainSubBlip type] != 7 || (v12 = mainSubBlip) == 0)
  {
    altSubBlip = [blip altSubBlip];
    if ([altSubBlip type] == 7)
    {
      v12 = altSubBlip;
    }

    else
    {
      v12 = 0;
    }
  }

LABEL_15:
  v15 = v12;

  return v12;
}

+ (void)mapImageWithGifAsMovie:(id)movie xmlNode:(_xmlNode *)node drawingState:(id)state
{
  movieCopy = movie;
  stateCopy = state;
  imageProperties = [movieCopy imageProperties];
  imageFill = [imageProperties imageFill];
  v11 = [self GifSubBlip:imageFill drawingState:stateCopy];

  if (v11)
  {
    if (([v11 isLoaded] & 1) == 0)
    {
      [v11 load];
    }

    data = [v11 data];
    if (data)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = CGImageSourceCreateWithData(data, 0);
      if (CGImageSourceGetCount(v14) >= 2)
      {
        packagePart = [stateCopy packagePart];
        oAXMainNamespace = [stateCopy OAXMainNamespace];
        v17 = OCXFindChild(node, oAXMainNamespace, "blip");

        if (v17)
        {
          v18 = [stateCopy OCXReadRelationshipForNode:v17 attributeName:"embed" packagePart:packagePart];
          v19 = v18;
          if (v18)
          {
            targetLocation = [v18 targetLocation];
            if (targetLocation)
            {
              v25 = packagePart;
              v21 = objc_alloc_init(OADVideoFile);
              v22 = [OAXMovieContext alloc];
              package = [v25 package];
              v24 = [(OCXDelayedMediaContext *)v22 initWithTargetLocation:targetLocation package:package];

              [(OCDDelayedNode *)v21 setDelayedContext:v24];
              [(OADLinkedMediaFile *)v21 setUrl:targetLocation];
              [(OADLinkedMediaFile *)v21 setIsExternal:0];
              [(OADMovie *)v21 setLoop:1];
              [movieCopy setMovie:v21];

              packagePart = v25;
            }
          }

          else
          {
            targetLocation = 0;
          }
        }

        else
        {
          targetLocation = 0;
          v19 = 0;
        }
      }

      CFRelease(v14);
      objc_autoreleasePoolPop(v13);
    }
  }
}

@end