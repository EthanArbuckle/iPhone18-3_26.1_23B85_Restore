@interface WXTableRowProperties
+ (void)readFrom:(_xmlNode *)a3 to:(id)a4 state:(id)a5;
@end

@implementation WXTableRowProperties

+ (void)readFrom:(_xmlNode *)a3 to:(id)a4 state:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [v8 WXMainNamespace];
  v10 = OCXFindChild(a3, v9, "ins");

  if (v10)
  {
    v11 = [v7 characterProperties];
    [v11 setEdited:1];

    v12 = [v7 characterProperties];
    v13 = wmxmlGetDateProperty(v10);
    [v12 setEditDate:v13];

    v14 = [v7 characterProperties];
    v15 = [v8 document];
    v16 = wmxmlGetAuthorProperty(v10);
    [v14 setIndexToAuthorIDOfEdit:{objc_msgSend(v15, "revisionAuthorAddLookup:", v16)}];
  }

  v17 = [v8 WXMainNamespace];
  v18 = OCXFindChild(a3, v17, "del");

  if (v18)
  {
    v19 = [v7 characterProperties];
    [v19 setDeleted:1];

    v20 = [v7 characterProperties];
    v21 = wmxmlGetDateProperty(v18);
    [v20 setDeletionDate:v21];

    v22 = [v7 characterProperties];
    v23 = [v8 document];
    v24 = wmxmlGetAuthorProperty(v18);
    [v22 setIndexToAuthorIDOfDeletion:{objc_msgSend(v23, "revisionAuthorAddLookup:", v24)}];
  }

  v45 = 0;
  v25 = +[WXCommon heightTypeEnumMap];
  v26 = readEnumProperty<WDHeightType>(a3, "trHeight", "hRule", v25, &v45, v8);

  if (v26)
  {
    [v7 setHeightType:v45];
  }

  v44 = 1;
  v43 = 0;
  v42 = 0;
  v27 = [v8 WXMainNamespace];
  v28 = OCXFindChild(a3, v27, "wBefore");

  v29 = [v8 WXMainNamespace];
  LODWORD(v28) = WXOptionalTableWidthAttribute(v28, v29, "w", &v43, &v44);

  if (v28)
  {
    [v7 setWidthBefore:v43];
    [v7 setWidthBeforeType:v44];
  }

  v30 = [v8 WXMainNamespace];
  v31 = OCXFindChild(a3, v30, "wAfter");

  v32 = [v8 WXMainNamespace];
  LODWORD(v31) = WXOptionalTableWidthAttribute(v31, v32, "w", &v43, &v44);

  if (v31)
  {
    [v7 setWidthAfter:v43];
    [v7 setWidthAfterType:v44];
  }

  v33 = [v8 WXMainNamespace];
  v34 = OCXFindChild(a3, v33, "trHeight");

  v35 = [v8 WXMainNamespace];
  LODWORD(v34) = CXOptionalLongAttribute(v34, v35, "val", &v42, 14);

  if (v34)
  {
    [v7 setHeight:v42];
  }

  v41 = 0;
  v36 = [v8 WXMainNamespace];
  v37 = OCXFindChild(a3, v36, "tblHeader");

  v38 = [v8 WXMainNamespace];
  v39 = CXOptionalBoolAttribute(v37, v38, "val", &v41);

  if (v39)
  {
    v40 = v41;
LABEL_17:
    [v7 setHeader:v40];
    goto LABEL_18;
  }

  if (v37)
  {
    v40 = 1;
    goto LABEL_17;
  }

LABEL_18:
  [v8 setCurrentRowCNFStyle:{+[WXTableCellProperties bitfieldForCnfStyleFrom:state:](WXTableCellProperties, "bitfieldForCnfStyleFrom:state:", a3, v8)}];
}

@end