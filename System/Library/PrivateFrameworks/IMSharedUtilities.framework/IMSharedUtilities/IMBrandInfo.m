@interface IMBrandInfo
- (IMBrandInfo)init;
- (IMBrandInfo)initWithBrandURI:(id)a3 name:(id)a4 categories:(id)a5 primaryPhoneNumber:(id)a6 primaryBrandColorHexString:(id)a7 secondaryBrandColorHexString:(id)a8 isVerified:(BOOL)a9 localizedDescription:(id)a10 verifiedBy:(id)a11 website:(id)a12 messageNumber:(id)a13 emailAddress:(id)a14 address:(id)a15 termsAndConditionsURL:(id)a16 localizedResponseTime:(id)a17 genericCSSTemplateURL:(id)a18 brandLogoGuid:(id)a19;
- (NSArray)categories;
- (void)setBrandLogoGuid:(id)a3;
@end

@implementation IMBrandInfo

- (NSArray)categories
{
  if (*(self + OBJC_IVAR___IMBrandInfo_categories))
  {

    v2 = sub_1A88C85E8();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setBrandLogoGuid:(id)a3
{
  if (a3)
  {
    v4 = sub_1A88C82E8();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___IMBrandInfo_brandLogoGuid);
  *v6 = v4;
  v6[1] = v5;
}

- (IMBrandInfo)initWithBrandURI:(id)a3 name:(id)a4 categories:(id)a5 primaryPhoneNumber:(id)a6 primaryBrandColorHexString:(id)a7 secondaryBrandColorHexString:(id)a8 isVerified:(BOOL)a9 localizedDescription:(id)a10 verifiedBy:(id)a11 website:(id)a12 messageNumber:(id)a13 emailAddress:(id)a14 address:(id)a15 termsAndConditionsURL:(id)a16 localizedResponseTime:(id)a17 genericCSSTemplateURL:(id)a18 brandLogoGuid:(id)a19
{
  v23 = sub_1A88C82E8();
  v94 = v24;
  v95 = v23;
  v25 = sub_1A88C82E8();
  v92 = v26;
  v93 = v25;
  if (a5)
  {
    v91 = sub_1A88C85F8();
  }

  else
  {
    v91 = 0;
  }

  if (a6)
  {
    v27 = sub_1A88C82E8();
    v89 = v28;
    v90 = v27;
    if (a7)
    {
LABEL_6:
      v29 = sub_1A88C82E8();
      v87 = v30;
      v88 = v29;
      goto LABEL_9;
    }
  }

  else
  {
    v89 = 0;
    v90 = 0;
    if (a7)
    {
      goto LABEL_6;
    }
  }

  v87 = 0;
  v88 = 0;
LABEL_9:
  v31 = a8;
  v32 = a10;
  v33 = a11;
  v34 = a12;
  v78 = a13;
  v76 = a14;
  v35 = a15;
  v36 = a16;
  v37 = a17;
  v38 = a18;
  v84 = a19;
  if (v31)
  {
    v39 = sub_1A88C82E8();
    v85 = v40;
    v86 = v39;

    v41 = v38;
    if (v32)
    {
      goto LABEL_11;
    }

LABEL_14:
    v82 = 0;
    v83 = 0;
    v44 = v34;
    if (v33)
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  v85 = 0;
  v86 = 0;
  v41 = v38;
  if (!v32)
  {
    goto LABEL_14;
  }

LABEL_11:
  v42 = sub_1A88C82E8();
  v82 = v43;
  v83 = v42;

  v44 = v34;
  if (v33)
  {
LABEL_12:
    v81 = sub_1A88C82E8();
    v80 = v45;

    goto LABEL_16;
  }

LABEL_15:
  v81 = 0;
  v80 = 0;
LABEL_16:
  v46 = v35;
  v48 = v76;
  v47 = v78;
  if (v44)
  {
    v49 = sub_1A88C82E8();
    v77 = v50;
    v79 = v49;

    if (v47)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v77 = 0;
    v79 = 0;
    if (v47)
    {
LABEL_18:
      v51 = sub_1A88C82E8();
      v74 = v52;
      v75 = v51;

      if (v48)
      {
        goto LABEL_19;
      }

      goto LABEL_26;
    }
  }

  v74 = 0;
  v75 = 0;
  if (v48)
  {
LABEL_19:
    v53 = sub_1A88C82E8();
    v72 = v54;
    v73 = v53;

    if (v46)
    {
      goto LABEL_20;
    }

    goto LABEL_27;
  }

LABEL_26:
  v72 = 0;
  v73 = 0;
  if (v46)
  {
LABEL_20:
    v55 = sub_1A88C82E8();
    v70 = v56;
    v71 = v55;

    if (v36)
    {
      goto LABEL_21;
    }

    goto LABEL_28;
  }

LABEL_27:
  v70 = 0;
  v71 = 0;
  if (v36)
  {
LABEL_21:
    v57 = sub_1A88C82E8();
    v59 = v58;

    if (v37)
    {
      goto LABEL_22;
    }

LABEL_29:
    v60 = 0;
    v62 = 0;
    if (v41)
    {
      goto LABEL_23;
    }

    goto LABEL_30;
  }

LABEL_28:
  v57 = 0;
  v59 = 0;
  if (!v37)
  {
    goto LABEL_29;
  }

LABEL_22:
  v60 = sub_1A88C82E8();
  v62 = v61;

  if (v41)
  {
LABEL_23:
    v63 = sub_1A88C82E8();
    v65 = v64;

    goto LABEL_31;
  }

LABEL_30:
  v63 = 0;
  v65 = 0;
LABEL_31:
  if (v84)
  {
    v66 = sub_1A88C82E8();
    v68 = v67;
  }

  else
  {
    v66 = 0;
    v68 = 0;
  }

  return sub_1A87F531C(v95, v94, v93, v92, v91, v90, v89, v88, v87, v86, v85, a9, v83, v82, v81, v80, v79, v77, v75, v74, v73, v72, v71, v70, v57, v59, v60, v62, v63, v65, v66, v68);
}

- (IMBrandInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end