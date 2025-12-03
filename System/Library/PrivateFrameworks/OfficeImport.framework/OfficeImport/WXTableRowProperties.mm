@interface WXTableRowProperties
+ (void)readFrom:(_xmlNode *)from to:(id)to state:(id)state;
@end

@implementation WXTableRowProperties

+ (void)readFrom:(_xmlNode *)from to:(id)to state:(id)state
{
  toCopy = to;
  stateCopy = state;
  wXMainNamespace = [stateCopy WXMainNamespace];
  v10 = OCXFindChild(from, wXMainNamespace, "ins");

  if (v10)
  {
    characterProperties = [toCopy characterProperties];
    [characterProperties setEdited:1];

    characterProperties2 = [toCopy characterProperties];
    v13 = wmxmlGetDateProperty(v10);
    [characterProperties2 setEditDate:v13];

    characterProperties3 = [toCopy characterProperties];
    document = [stateCopy document];
    v16 = wmxmlGetAuthorProperty(v10);
    [characterProperties3 setIndexToAuthorIDOfEdit:{objc_msgSend(document, "revisionAuthorAddLookup:", v16)}];
  }

  wXMainNamespace2 = [stateCopy WXMainNamespace];
  v18 = OCXFindChild(from, wXMainNamespace2, "del");

  if (v18)
  {
    characterProperties4 = [toCopy characterProperties];
    [characterProperties4 setDeleted:1];

    characterProperties5 = [toCopy characterProperties];
    v21 = wmxmlGetDateProperty(v18);
    [characterProperties5 setDeletionDate:v21];

    characterProperties6 = [toCopy characterProperties];
    document2 = [stateCopy document];
    v24 = wmxmlGetAuthorProperty(v18);
    [characterProperties6 setIndexToAuthorIDOfDeletion:{objc_msgSend(document2, "revisionAuthorAddLookup:", v24)}];
  }

  v45 = 0;
  v25 = +[WXCommon heightTypeEnumMap];
  v26 = readEnumProperty<WDHeightType>(from, "trHeight", "hRule", v25, &v45, stateCopy);

  if (v26)
  {
    [toCopy setHeightType:v45];
  }

  v44 = 1;
  v43 = 0;
  v42 = 0;
  wXMainNamespace3 = [stateCopy WXMainNamespace];
  v28 = OCXFindChild(from, wXMainNamespace3, "wBefore");

  wXMainNamespace4 = [stateCopy WXMainNamespace];
  LODWORD(v28) = WXOptionalTableWidthAttribute(v28, wXMainNamespace4, "w", &v43, &v44);

  if (v28)
  {
    [toCopy setWidthBefore:v43];
    [toCopy setWidthBeforeType:v44];
  }

  wXMainNamespace5 = [stateCopy WXMainNamespace];
  v31 = OCXFindChild(from, wXMainNamespace5, "wAfter");

  wXMainNamespace6 = [stateCopy WXMainNamespace];
  LODWORD(v31) = WXOptionalTableWidthAttribute(v31, wXMainNamespace6, "w", &v43, &v44);

  if (v31)
  {
    [toCopy setWidthAfter:v43];
    [toCopy setWidthAfterType:v44];
  }

  wXMainNamespace7 = [stateCopy WXMainNamespace];
  v34 = OCXFindChild(from, wXMainNamespace7, "trHeight");

  wXMainNamespace8 = [stateCopy WXMainNamespace];
  LODWORD(v34) = CXOptionalLongAttribute(v34, wXMainNamespace8, "val", &v42, 14);

  if (v34)
  {
    [toCopy setHeight:v42];
  }

  v41 = 0;
  wXMainNamespace9 = [stateCopy WXMainNamespace];
  v37 = OCXFindChild(from, wXMainNamespace9, "tblHeader");

  wXMainNamespace10 = [stateCopy WXMainNamespace];
  v39 = CXOptionalBoolAttribute(v37, wXMainNamespace10, "val", &v41);

  if (v39)
  {
    v40 = v41;
LABEL_17:
    [toCopy setHeader:v40];
    goto LABEL_18;
  }

  if (v37)
  {
    v40 = 1;
    goto LABEL_17;
  }

LABEL_18:
  [stateCopy setCurrentRowCNFStyle:{+[WXTableCellProperties bitfieldForCnfStyleFrom:state:](WXTableCellProperties, "bitfieldForCnfStyleFrom:state:", from, stateCopy)}];
}

@end