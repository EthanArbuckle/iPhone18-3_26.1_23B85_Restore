@interface OAXPicture
+ (id)GifSubBlip:(id)a3 drawingState:(id)a4;
+ (id)readFromXmlNode:(_xmlNode *)a3 inNamespace:(id)a4 drawingState:(id)a5;
+ (void)mapImageWithGifAsMovie:(id)a3 xmlNode:(_xmlNode *)a4 drawingState:(id)a5;
+ (void)readNonVisualPropertiesFromXmlNode:(_xmlNode *)a3 inNamespace:(id)a4 toDrawable:(id)a5 drawingState:(id)a6;
@end

@implementation OAXPicture

+ (id)readFromXmlNode:(_xmlNode *)a3 inNamespace:(id)a4 drawingState:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(OADImage);
  [OAXDrawable readNonVisualPropertiesFromDrawableXmlNode:a3 inNamespace:v8 visualNodeName:"nvPicPr" toDrawable:v10 drawingState:v9];
  v11 = OCXFindChild(a3, v8, "nvPicPr");
  if (!v11)
  {
    [TCMessageException raise:OABadFormat];
  }

  [OAXPicture readNonVisualPropertiesFromXmlNode:v11 inNamespace:v8 toDrawable:v10 drawingState:v9];
  v12 = OCXFindChild(a3, v8, "spPr");
  if (!v12)
  {
    [TCMessageException raise:OABadFormat];
  }

  v13 = [(OADGraphic *)v10 graphicProperties];
  [OAXGraphic readPropertiesFromXmlNode:v12 graphicProperties:v13 drawingState:v9];

  v14 = OCXFindChild(a3, v8, "blipFill");
  if (!v14)
  {
    [TCMessageException raise:OABadFormat];
  }

  v15 = [v9 packagePart];
  v16 = [OAXFill readImageFillFromXmlNode:v14 packagePart:v15 forDrawable:v10 drawingState:v9];

  v17 = [(OADImage *)v10 imageProperties];
  [v17 setImageFill:v16];

  [OAXTransform2D readFromParentXmlNode:v12 inNamespace:v8 toDrawable:v10 drawingState:v9];
  v18 = [OAXGeometry readFromParentXmlNode:v12 drawingState:v9];
  [(OADImage *)v10 setGeometry:v18];

  v19 = [v9 client];
  [v19 readClientDataFromPictureNode:a3 toImage:v10 state:v9];

  v20 = [(OADImage *)v10 movie];

  if (!v20)
  {
    [a1 mapImageWithGifAsMovie:v10 xmlNode:v14 drawingState:v9];
  }

  return v10;
}

+ (void)readNonVisualPropertiesFromXmlNode:(_xmlNode *)a3 inNamespace:(id)a4 toDrawable:(id)a5 drawingState:(id)a6
{
  v9 = a4;
  v54 = a5;
  v10 = a6;
  v11 = OCXFindChild(a3, v9, "cNvPicPr");
  if (v11)
  {
    v12 = [v10 OAXMainNamespace];
    v13 = OCXFindChild(v11, v12, "picLocks");

    if (v13)
    {
      v14 = CXDefaultBoolAttribute(v13, CXNoNamespace, "noChangeAspect", 0);
      v15 = [v54 drawableProperties];
      [v15 setAspectRatioLocked:v14];
    }

    v16 = OCXFindChild(a3, v9, "cNvPr");
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
        [v54 setMovie:v23];
      }

      v55 = 0;
      v25 = CXOptionalStringAttribute(v17, CXNoNamespace, "name", &v55);
      v26 = v55;
      if (v25)
      {
        v27 = [v54 drawableProperties];
        [v27 setAltDescription:v26];
      }
    }

    v28 = OCXFindChild(a3, v9, "nvPr");
    v29 = v28;
    if (v28)
    {
      for (i = OCXFirstChild(v28); i; i = OCXNextSibling(i))
      {
        v31 = [v10 OAXMainNamespace];
        v32 = [v31 containsNode:i];

        if (v32)
        {
          if (xmlStrEqual(i->name, "wavAudioFile"))
          {
            v38 = [v10 packagePart];
            v37 = [v10 OCXReadRelationshipForNode:i attributeName:"embed" packagePart:v38];

            v39 = [OAXMovieContext alloc];
            v40 = [v37 targetLocation];
            v41 = [v10 packagePart];
            v42 = [v41 package];
            v43 = [(OCXDelayedMediaContext *)v39 initWithTargetLocation:v40 package:v42];

            v44 = CXDefaultStringAttribute(i, CXNoNamespace, "name", 0);
            v45 = objc_alloc_init(OADSound);
            [(OCDDelayedNode *)v45 setDelayedContext:v43];
            [(OADSound *)v45 setName:v44];
            v46 = objc_alloc_init(OADOle);
            [(OADOle *)v46 setObject:v45];
            [v54 setOle:v46];
            goto LABEL_22;
          }

          v33 = xmlStrEqual(i->name, "audioFile");
          v34 = off_2799C5710;
          if (v33 || (v35 = xmlStrEqual(i->name, "videoFile"), v34 = off_2799C5760, v35) || (v36 = xmlStrEqual(i->name, "quickTimeFile"), v34 = off_2799C5748, v36))
          {
            v37 = objc_alloc_init(*v34);
            if (v37)
            {
              v47 = [v10 packagePart];
              v43 = [v10 OCXReadRelationshipForNode:i attributeName:"link" packagePart:v47];

              v44 = [(OAXMovieContext *)v43 targetLocation];
              if (v44)
              {
                v48 = [OAXMovieContext alloc];
                v49 = [v10 packagePart];
                v50 = [v49 package];
                v45 = [(OCXDelayedMediaContext *)v48 initWithTargetLocation:v44 package:v50];

                [v37 setDelayedContext:v45];
                [v37 setUrl:v44];
                [v37 setIsExternal:{-[OAXMovieContext targetMode](v43, "targetMode") == 1}];
                [v54 setMovie:v37];
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
              v46 = [v10 client];
              [(OADOle *)v46 readBlipExtWithURI:v45 fromNode:v53 toDrawable:v54 state:v10];
LABEL_22:

              goto LABEL_25;
            }
          }
        }
      }
    }
  }
}

+ (id)GifSubBlip:(id)a3 drawingState:(id)a4
{
  v5 = a4;
  v6 = [a3 blipRef];
  v7 = [v6 blip];
  v8 = [v5 targetBlipCollection];
  v9 = [v8 blips];

  v10 = [v6 index];
  if (v7)
  {
    goto LABEL_2;
  }

  v14 = v10;
  if (![v9 count] || objc_msgSend(v9, "count") <= (v14 - 1))
  {
    v7 = 0;
LABEL_11:
    v12 = 0;
    goto LABEL_15;
  }

  v7 = [v9 objectAtIndexedSubscript:?];
  if (!v7)
  {
    goto LABEL_11;
  }

LABEL_2:
  v11 = [v7 mainSubBlip];
  if ([v11 type] != 7 || (v12 = v11) == 0)
  {
    v13 = [v7 altSubBlip];
    if ([v13 type] == 7)
    {
      v12 = v13;
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

+ (void)mapImageWithGifAsMovie:(id)a3 xmlNode:(_xmlNode *)a4 drawingState:(id)a5
{
  v26 = a3;
  v8 = a5;
  v9 = [v26 imageProperties];
  v10 = [v9 imageFill];
  v11 = [a1 GifSubBlip:v10 drawingState:v8];

  if (v11)
  {
    if (([v11 isLoaded] & 1) == 0)
    {
      [v11 load];
    }

    v12 = [v11 data];
    if (v12)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = CGImageSourceCreateWithData(v12, 0);
      if (CGImageSourceGetCount(v14) >= 2)
      {
        v15 = [v8 packagePart];
        v16 = [v8 OAXMainNamespace];
        v17 = OCXFindChild(a4, v16, "blip");

        if (v17)
        {
          v18 = [v8 OCXReadRelationshipForNode:v17 attributeName:"embed" packagePart:v15];
          v19 = v18;
          if (v18)
          {
            v20 = [v18 targetLocation];
            if (v20)
            {
              v25 = v15;
              v21 = objc_alloc_init(OADVideoFile);
              v22 = [OAXMovieContext alloc];
              v23 = [v25 package];
              v24 = [(OCXDelayedMediaContext *)v22 initWithTargetLocation:v20 package:v23];

              [(OCDDelayedNode *)v21 setDelayedContext:v24];
              [(OADLinkedMediaFile *)v21 setUrl:v20];
              [(OADLinkedMediaFile *)v21 setIsExternal:0];
              [(OADMovie *)v21 setLoop:1];
              [v26 setMovie:v21];

              v15 = v25;
            }
          }

          else
          {
            v20 = 0;
          }
        }

        else
        {
          v20 = 0;
          v19 = 0;
        }
      }

      CFRelease(v14);
      objc_autoreleasePoolPop(v13);
    }
  }
}

@end