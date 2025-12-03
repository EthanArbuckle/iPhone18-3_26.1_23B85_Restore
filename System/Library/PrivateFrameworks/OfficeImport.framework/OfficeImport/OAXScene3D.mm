@interface OAXScene3D
+ (BOOL)isEmpty:(id)empty;
+ (id)cameraTypeEnumMap;
+ (id)lightRigDirectionEnumMap;
+ (id)lightRigTypeEnumMap;
+ (id)readBackdropFromXmlNode:(_xmlNode *)node drawingState:(id)state;
+ (id)readCameraFromXmlNode:(_xmlNode *)node drawingState:(id)state;
+ (id)readLightRigFromXmlNode:(_xmlNode *)node drawingState:(id)state;
+ (id)readScene3DFromXmlNode:(_xmlNode *)node packagePart:(id)part drawingState:(id)state;
+ (void)cameraTypeEnumMap;
+ (void)lightRigDirectionEnumMap;
+ (void)lightRigTypeEnumMap;
+ (void)writeBackdrop:(id)backdrop to:(id)to;
+ (void)writeCamera:(id)camera to:(id)to;
+ (void)writeLightRig:(id)rig to:(id)to;
+ (void)writeRotation3D:(id)d to:(id)to;
+ (void)writeScene3D:(id)d to:(id)to;
@end

@implementation OAXScene3D

+ (id)cameraTypeEnumMap
{
  v2 = +[OAXScene3D cameraTypeEnumMap]::cameraTypeEnumMap;
  if (!+[OAXScene3D cameraTypeEnumMap]::cameraTypeEnumMap)
  {
    {
      +[OAXScene3D cameraTypeEnumMap];
    }

    v3 = [[TCEnumerationMap alloc] initWithStructs:&+[OAXScene3D cameraTypeEnumMap]::cameraTypeEnumStructs count:62 caseSensitive:1];
    v4 = +[OAXScene3D cameraTypeEnumMap]::cameraTypeEnumMap;
    +[OAXScene3D cameraTypeEnumMap]::cameraTypeEnumMap = v3;

    v2 = +[OAXScene3D cameraTypeEnumMap]::cameraTypeEnumMap;
  }

  return v2;
}

+ (id)lightRigTypeEnumMap
{
  v2 = +[OAXScene3D lightRigTypeEnumMap]::lightRigTypeEnumMap;
  if (!+[OAXScene3D lightRigTypeEnumMap]::lightRigTypeEnumMap)
  {
    {
      +[OAXScene3D lightRigTypeEnumMap];
    }

    v3 = [[TCEnumerationMap alloc] initWithStructs:&+[OAXScene3D lightRigTypeEnumMap]::lightRigTypeEnumStructs count:27 caseSensitive:1];
    v4 = +[OAXScene3D lightRigTypeEnumMap]::lightRigTypeEnumMap;
    +[OAXScene3D lightRigTypeEnumMap]::lightRigTypeEnumMap = v3;

    v2 = +[OAXScene3D lightRigTypeEnumMap]::lightRigTypeEnumMap;
  }

  return v2;
}

+ (id)lightRigDirectionEnumMap
{
  v2 = +[OAXScene3D lightRigDirectionEnumMap]::lightRigDirectionEnumMap;
  if (!+[OAXScene3D lightRigDirectionEnumMap]::lightRigDirectionEnumMap)
  {
    {
      +[OAXScene3D lightRigDirectionEnumMap];
    }

    v3 = [[TCEnumerationMap alloc] initWithStructs:&+[OAXScene3D lightRigDirectionEnumMap]::lightRigDirectionEnumStructs count:9 caseSensitive:1];
    v4 = +[OAXScene3D lightRigDirectionEnumMap]::lightRigDirectionEnumMap;
    +[OAXScene3D lightRigDirectionEnumMap]::lightRigDirectionEnumMap = v3;

    v2 = +[OAXScene3D lightRigDirectionEnumMap]::lightRigDirectionEnumMap;
  }

  return v2;
}

+ (id)readCameraFromXmlNode:(_xmlNode *)node drawingState:(id)state
{
  stateCopy = state;
  v7 = objc_alloc_init(OADCamera);
  oAXMainNamespace = [stateCopy OAXMainNamespace];
  v9 = OCXFindChild(node, oAXMainNamespace, "rot");

  if (v9)
  {
    v10 = [OAXBaseTypes readRotation3DFromXmlNode:v9];
    [(OADCamera *)v7 setRotation:v10];
  }

  v11 = CXDefaultStringAttribute(node, CXNoNamespace, "prst", 0);
  if (v11)
  {
    cameraTypeEnumMap = [self cameraTypeEnumMap];
    v13 = [cameraTypeEnumMap valueForString:v11];

    [(OADCamera *)v7 setCameraType:v13];
  }

  v18 = 0;
  if (CXOptionalLongAttribute(node, CXNoNamespace, "fov", &v18))
  {
    v14 = v18 / 60000.0;
    *&v14 = v14;
    [(OADCamera *)v7 setFieldOfView:v14];
  }

  v17 = 0.0;
  if (CXOptionalFractionAttribute(node, CXNoNamespace, "zoom", &v17))
  {
    HIDWORD(v15) = HIDWORD(v17);
    *&v15 = v17;
    [(OADCamera *)v7 setFieldOfView:v15];
  }

  return v7;
}

+ (id)readLightRigFromXmlNode:(_xmlNode *)node drawingState:(id)state
{
  stateCopy = state;
  v7 = objc_alloc_init(OADLightRig);
  oAXMainNamespace = [stateCopy OAXMainNamespace];
  v9 = OCXFindChild(node, oAXMainNamespace, "rot");

  if (v9)
  {
    v10 = [OAXBaseTypes readRotation3DFromXmlNode:v9];
    [(OADLightRig *)v7 setRotation:v10];
  }

  v11 = CXDefaultStringAttribute(node, CXNoNamespace, "rig", 0);
  if (v11)
  {
    lightRigTypeEnumMap = [self lightRigTypeEnumMap];
    v13 = [lightRigTypeEnumMap valueForString:v11];

    [(OADLightRig *)v7 setType:v13];
  }

  v14 = CXDefaultStringAttribute(node, CXNoNamespace, "dir", 0);
  if (v14)
  {
    lightRigDirectionEnumMap = [self lightRigDirectionEnumMap];
    v16 = [lightRigDirectionEnumMap valueForString:v14];

    [(OADLightRig *)v7 setDirection:v16];
  }

  return v7;
}

+ (id)readBackdropFromXmlNode:(_xmlNode *)node drawingState:(id)state
{
  stateCopy = state;
  v6 = objc_alloc_init(OADBackdrop);
  oAXMainNamespace = [stateCopy OAXMainNamespace];
  v8 = OCXFindChild(node, oAXMainNamespace, "anchor");

  if (v8)
  {
    v9 = [OAXBaseTypes readPoint3DFromXmlNode:v8];
    [(OADBackdrop *)v6 setAnchor:v9];
  }

  oAXMainNamespace2 = [stateCopy OAXMainNamespace];
  v11 = OCXFindChild(node, oAXMainNamespace2, "norm");

  if (v11)
  {
    v12 = [OAXBaseTypes readVector3DFromXmlNode:v11];
    [(OADBackdrop *)v6 setNormal:v12];
  }

  oAXMainNamespace3 = [stateCopy OAXMainNamespace];
  v14 = OCXFindChild(node, oAXMainNamespace3, "up");

  if (v14)
  {
    v15 = [OAXBaseTypes readVector3DFromXmlNode:v14];
    [(OADBackdrop *)v6 setUp:v15];
  }

  return v6;
}

+ (id)readScene3DFromXmlNode:(_xmlNode *)node packagePart:(id)part drawingState:(id)state
{
  stateCopy = state;
  v8 = objc_alloc_init(OADScene3D);
  oAXMainNamespace = [stateCopy OAXMainNamespace];
  v10 = OCXFindChild(node, oAXMainNamespace, "camera");

  if (v10)
  {
    v11 = [self readCameraFromXmlNode:v10 drawingState:stateCopy];
    [(OADScene3D *)v8 setCamera:v11];
  }

  oAXMainNamespace2 = [stateCopy OAXMainNamespace];
  v13 = OCXFindChild(node, oAXMainNamespace2, "lightRig");

  if (v13)
  {
    v14 = [self readLightRigFromXmlNode:v13 drawingState:stateCopy];
    [(OADScene3D *)v8 setLightRig:v14];
  }

  oAXMainNamespace3 = [stateCopy OAXMainNamespace];
  v16 = OCXFindChild(node, oAXMainNamespace3, "backdrop");

  if (v16)
  {
    v17 = [self readBackdropFromXmlNode:v16 drawingState:stateCopy];
    [(OADScene3D *)v8 setBackdrop:v17];
  }

  return v8;
}

+ (void)writeScene3D:(id)d to:(id)to
{
  dCopy = d;
  toCopy = to;
  backdrop = [dCopy backdrop];
  if (backdrop)
  {
    [toCopy startOAElement:@"backdrop"];
    [self writeBackdrop:backdrop to:toCopy];
    [toCopy endElement];
  }

  camera = [dCopy camera];
  if (camera)
  {
    [toCopy startOAElement:@"camera"];
    [self writeCamera:camera to:toCopy];
    [toCopy endElement];
  }

  lightRig = [dCopy lightRig];
  if (lightRig)
  {
    [toCopy startOAElement:@"lightRig"];
    [self writeLightRig:lightRig to:toCopy];
    [toCopy endElement];
  }
}

+ (BOOL)isEmpty:(id)empty
{
  emptyCopy = empty;
  v4 = emptyCopy;
  if (emptyCopy)
  {
    camera = [emptyCopy camera];
    if (camera)
    {
      lightRig = [v4 lightRig];
      v7 = lightRig == 0;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

+ (void)writeBackdrop:(id)backdrop to:(id)to
{
  backdropCopy = backdrop;
  toCopy = to;
  anchor = [backdropCopy anchor];
  if (anchor)
  {
    [toCopy startOAElement:@"anchor"];
    v7 = MEMORY[0x277CCABB0];
    [anchor x];
    *&v9 = v8 * 12700.0;
    v10 = [v7 numberWithFloat:v9];
    longValue = [v10 longValue];

    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", longValue];
    [toCopy writeOAAttribute:@"x" content:v12];

    v13 = MEMORY[0x277CCABB0];
    [anchor y];
    *&v15 = v14 * 12700.0;
    v16 = [v13 numberWithFloat:v15];
    longValue2 = [v16 longValue];

    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", longValue2];
    [toCopy writeOAAttribute:@"y" content:v18];

    v19 = MEMORY[0x277CCABB0];
    [anchor z];
    *&v21 = v20 * 12700.0;
    v22 = [v19 numberWithFloat:v21];
    longValue3 = [v22 longValue];

    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", longValue3];
    [toCopy writeOAAttribute:@"z" content:v24];

    [toCopy endElement];
  }

  normal = [backdropCopy normal];
  if (normal)
  {
    [toCopy startOAElement:@"norm"];
    v26 = MEMORY[0x277CCABB0];
    [normal dx];
    *&v28 = v27 * 12700.0;
    v29 = [v26 numberWithFloat:v28];
    longValue4 = [v29 longValue];

    v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", longValue4];
    [toCopy writeOAAttribute:@"dx" content:v31];

    v32 = MEMORY[0x277CCABB0];
    [normal dy];
    *&v34 = v33 * 12700.0;
    v35 = [v32 numberWithFloat:v34];
    longValue5 = [v35 longValue];

    v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", longValue5];
    [toCopy writeOAAttribute:@"dy" content:v37];

    v38 = MEMORY[0x277CCABB0];
    [normal dz];
    *&v40 = v39 * 12700.0;
    v41 = [v38 numberWithFloat:v40];
    longValue6 = [v41 longValue];

    v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", longValue6];
    [toCopy writeOAAttribute:@"dz" content:v43];

    [toCopy endElement];
  }

  v44 = [backdropCopy up];
  if (v44)
  {
    [toCopy startOAElement:@"up"];
    v45 = MEMORY[0x277CCABB0];
    [v44 dx];
    *&v47 = v46 * 12700.0;
    v48 = [v45 numberWithFloat:v47];
    longValue7 = [v48 longValue];

    v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", longValue7];
    [toCopy writeOAAttribute:@"dx" content:v50];

    v51 = MEMORY[0x277CCABB0];
    [v44 dy];
    *&v53 = v52 * 12700.0;
    v54 = [v51 numberWithFloat:v53];
    longValue8 = [v54 longValue];

    v56 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", longValue8];
    [toCopy writeOAAttribute:@"dy" content:v56];

    v57 = MEMORY[0x277CCABB0];
    [v44 dz];
    *&v59 = v58 * 12700.0;
    v60 = [v57 numberWithFloat:v59];
    longValue9 = [v60 longValue];

    v62 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", longValue9];
    [toCopy writeOAAttribute:@"dz" content:v62];

    [toCopy endElement];
  }
}

+ (void)writeRotation3D:(id)d to:(id)to
{
  dCopy = d;
  toCopy = to;
  if (dCopy)
  {
    [toCopy startOAElement:@"rot"];
    v6 = MEMORY[0x277CCABB0];
    [dCopy latitude];
    *&v8 = v7 * 60000.0;
    v9 = [v6 numberWithFloat:v8];
    longValue = [v9 longValue];

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", longValue];
    [toCopy writeOAAttribute:@"lat" content:v11];

    v12 = MEMORY[0x277CCABB0];
    [dCopy longitude];
    *&v14 = v13 * 60000.0;
    v15 = [v12 numberWithFloat:v14];
    longValue2 = [v15 longValue];

    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", longValue2];
    [toCopy writeOAAttribute:@"lon" content:v17];

    v18 = MEMORY[0x277CCABB0];
    [dCopy revolution];
    *&v20 = v19 * 60000.0;
    v21 = [v18 numberWithFloat:v20];
    longValue3 = [v21 longValue];

    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", longValue3];
    [toCopy writeOAAttribute:@"rev" content:v23];

    [toCopy endElement];
  }
}

+ (void)writeCamera:(id)camera to:(id)to
{
  cameraCopy = camera;
  toCopy = to;
  cameraTypeEnumMap = [self cameraTypeEnumMap];
  v8 = [cameraTypeEnumMap stringForValue:{objc_msgSend(cameraCopy, "cameraType")}];

  [toCopy writeOAAttribute:@"prst" content:v8];
  v9 = MEMORY[0x277CCABB0];
  [cameraCopy fieldOfView];
  *&v11 = v10 * 60000.0;
  v12 = [v9 numberWithFloat:v11];
  longValue = [v12 longValue];

  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", longValue];
  [toCopy writeOAAttribute:@"fov" content:v14];

  v15 = MEMORY[0x277CCABB0];
  [cameraCopy zoom];
  *&v17 = v16 * 100000.0;
  v18 = [v15 numberWithFloat:v17];
  longValue2 = [v18 longValue];

  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", longValue2];
  [toCopy writeOAAttribute:@"zoom" content:v20];

  rotation = [cameraCopy rotation];
  [self writeRotation3D:rotation to:toCopy];
}

+ (void)writeLightRig:(id)rig to:(id)to
{
  rigCopy = rig;
  toCopy = to;
  lightRigTypeEnumMap = [self lightRigTypeEnumMap];
  v8 = [lightRigTypeEnumMap stringForValue:{objc_msgSend(rigCopy, "type")}];

  [toCopy writeOAAttribute:@"rig" content:v8];
  lightRigDirectionEnumMap = [self lightRigDirectionEnumMap];
  v10 = [lightRigDirectionEnumMap stringForValue:{objc_msgSend(rigCopy, "direction")}];

  [toCopy writeOAAttribute:@"dir" content:v10];
  rotation = [rigCopy rotation];
  [self writeRotation3D:rotation to:toCopy];
}

+ (void)cameraTypeEnumMap
{
  {
    __cxa_atexit(__cxx_global_array_dtor_10, 0, &dword_25D297000);
  }
}

+ (void)lightRigTypeEnumMap
{
  {
    __cxa_atexit(__cxx_global_array_dtor_265, 0, &dword_25D297000);
  }
}

+ (void)lightRigDirectionEnumMap
{
  {
    __cxa_atexit(__cxx_global_array_dtor_293, 0, &dword_25D297000);
  }
}

@end