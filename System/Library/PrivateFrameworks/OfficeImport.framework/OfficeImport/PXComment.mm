@interface PXComment
+ (void)readComments:(id)a3 slide:(id)a4 state:(id)a5;
@end

@implementation PXComment

+ (void)readComments:(id)a3 slide:(id)a4 state:(id)a5
{
  v39 = a3;
  v44 = a4;
  v7 = a5;
  v8 = [v7 PXPresentationMLNamespace];
  v9 = [v39 xmlDocument];
  if (!v9)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  v10 = OCXGetRootElement(v9);
  v11 = v10;
  if (!v10 || !xmlStrEqual(v10->name, "cmLst"))
  {
    [TCMessageException raise:TCInvalidFileFormatMessage, v39];
  }

  Child = OCXFindChild(v11, v8, "cm");
  v43 = v7;
  while (Child)
  {
    v13 = objc_alloc_init(PDComment);
    v14 = CXRequiredUnsignedLongAttribute(Child, CXNoNamespace, "authorId");
    v15 = [v7 commentAuthorIdToIndexMap];
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v14];
    v17 = [v15 objectForKey:v16];

    -[PDComment setAuthorId:](v13, "setAuthorId:", [v17 unsignedIntValue]);
    [(PDComment *)v13 setIndex:CXRequiredUnsignedLongAttribute(Child, CXNoNamespace, "idx") - 1];
    v18 = CXDefaultStringAttribute(Child, CXNoNamespace, "dt", 0);
    v19 = v18;
    if (v18)
    {
      v20 = CXDateForISO8601WithString(v18);
      [(PDComment *)v13 setDate:v20];
    }

    v21 = OCXFindChild(Child, v8, "text");
    if (v21)
    {
      v22 = *(v21 + 24);
      if (v22 && *(v22 + 80))
      {
        v23 = [MEMORY[0x277CCACA8] tc_stringWithXmlString:?];
      }

      else
      {
        v23 = &stru_286EE1130;
      }
    }

    else
    {
      v23 = &stru_286EE1130;
      [TCMessageException raise:TCInvalidFileFormatMessage];
    }

    [(PDComment *)v13 setText:v23, v39];
    v24 = OCXFindChild(Child, v8, "pos");
    if (!v24)
    {
      [TCMessageException raise:TCInvalidFileFormatMessage];
    }

    v25 = CXDefaultLongAttribute(v24, CXNoNamespace, "x", 0, 12);
    [(PDComment *)v13 setPosition:vcvtd_n_f64_s32(v25, 3uLL), vcvtd_n_f64_s32(CXDefaultLongAttribute(v24, CXNoNamespace, "y", 0, 12), 3uLL)];
    v26 = OCXFindChild(Child, v8, "extLst");
    if (v26)
    {
      v27 = OCXFindChild(v26, v8, "ext");
      v28 = v27;
      if (v27)
      {
        v29 = CXRequiredStringAttribute(v27, CXNoNamespace, "uri");
        if ([@"{C676402C-5697-4E1C-873F-D02D1690AC5C}" isEqualToString:v29])
        {
          v30 = OCXFindChild(v28, PXPowerPoint2012Namespace, "threadingInfo");
          if (v30)
          {
            v31 = OCXFindChild(v30, PXPowerPoint2012Namespace, "parentCm");
            v32 = v31;
            if (v31)
            {
              v33 = CXRequiredUnsignedLongAttribute(v31, CXNoNamespace, "authorId");
              v34 = objc_opt_class();
              v42 = [v43 commentAuthorIdToIndexMap];
              v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v33];
              v35 = [v42 objectForKey:v41];
              v36 = TSUDynamicCast(v34, v35);
              v40 = [v36 unsignedIntegerValue];

              v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{CXRequiredUnsignedLongAttribute(v32, CXNoNamespace, "idx") - 1}];
              v38 = [v44 commentForAuthorId:v40 authorIdx:{objc_msgSend(v37, "unsignedIntegerValue")}];

              if (v38)
              {
                [(PDComment *)v13 setParent:v38];
              }
            }
          }
        }

        v7 = v43;
      }
    }

    [v44 addComment:v13];

    Child = OCXFindNextChild(Child, v8, "cm");
  }
}

@end