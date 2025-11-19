@interface FAMonogram
+ (id)monogramForContact:(id)a3 diameter:(double)a4 scale:(double)a5;
+ (id)monogramWithFirstName:(id)a3 lastName:(id)a4 diameter:(double)a5 scale:(double)a6;
+ (id)silhouetteMonogramWithDiameter:(double)a3 scale:(double)a4;
@end

@implementation FAMonogram

+ (id)monogramForContact:(id)a3 diameter:(double)a4 scale:(double)a5
{
  v33[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = objc_alloc_init(MEMORY[0x1E695CF18]);
  [v8 setContactType:{objc_msgSend(v7, "contactType")}];
  v9 = [v7 givenName];
  [v8 setGivenName:v9];

  v10 = [v7 middleName];
  [v8 setMiddleName:v10];

  v11 = [v7 familyName];
  [v8 setFamilyName:v11];

  v12 = [v7 namePrefix];
  [v8 setNamePrefix:v12];

  v13 = [v7 nameSuffix];
  [v8 setNameSuffix:v13];

  v14 = [v7 nickname];
  [v8 setNickname:v14];

  v15 = MEMORY[0x1E695DF58];
  v16 = [MEMORY[0x1E695DF58] currentLocale];
  v17 = [v16 languageCode];
  v18 = [v15 characterDirectionForLanguage:v17];

  v29 = 0;
  v30 = &v29;
  v31 = 0x2050000000;
  v19 = getCNAvatarImageRenderingScopeClass_softClass;
  v32 = getCNAvatarImageRenderingScopeClass_softClass;
  if (!getCNAvatarImageRenderingScopeClass_softClass)
  {
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __getCNAvatarImageRenderingScopeClass_block_invoke;
    v28[3] = &unk_1E7CA4F30;
    v28[4] = &v29;
    __getCNAvatarImageRenderingScopeClass_block_invoke(v28);
    v19 = v30[3];
  }

  v20 = v19;
  _Block_object_dispose(&v29, 8);
  v21 = [v19 scopeWithPointSize:v18 == 2 scale:0 rightToLeft:a4 style:{a4, a5}];
  v22 = objc_alloc_init(getCNAvatarImageRendererClass());
  v33[0] = v8;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
  v24 = [v22 avatarImageForContacts:v23 scope:v21];
  v25 = _weakUIImagePNGRepresentation(v24);

  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

+ (id)silhouetteMonogramWithDiameter:(double)a3 scale:(double)a4
{
  v6 = objc_alloc_init(getCNAvatarImageRendererClass());
  v7 = [v6 placeholderImageProvider];
  v8 = [v7 imageForSize:a3 scale:{a3, a4}];
  v9 = _weakUIImagePNGRepresentation(v8);

  return v9;
}

+ (id)monogramWithFirstName:(id)a3 lastName:(id)a4 diameter:(double)a5 scale:(double)a6
{
  v10 = MEMORY[0x1E695CF18];
  v11 = a4;
  v12 = a3;
  v13 = objc_alloc_init(v10);
  [v13 setContactType:0];
  [v13 setGivenName:v12];

  [v13 setFamilyName:v11];
  v14 = [a1 monogramForContact:v13 diameter:a5 scale:a6];

  return v14;
}

@end