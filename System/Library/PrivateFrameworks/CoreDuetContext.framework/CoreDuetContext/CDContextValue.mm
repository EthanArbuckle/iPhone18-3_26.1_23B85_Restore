@interface CDContextValue
@end

@implementation CDContextValue

void __47___CDContextValue_supportedContextValueClasses__block_invoke()
{
  v19 = MEMORY[0x1E695DFD8];
  v18 = objc_opt_class();
  v17 = objc_opt_class();
  v16 = objc_opt_class();
  v15 = objc_opt_class();
  v14 = objc_opt_class();
  v13 = objc_opt_class();
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v21 = 0;
  v22 = &v21;
  v23 = 0x2050000000;
  v9 = getCSSearchableItemClass_softClass;
  v24 = getCSSearchableItemClass_softClass;
  if (!getCSSearchableItemClass_softClass)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __getCSSearchableItemClass_block_invoke;
    v20[3] = &unk_1E7886480;
    v20[4] = &v21;
    __getCSSearchableItemClass_block_invoke(v20);
    v9 = v22[3];
  }

  v10 = v9;
  _Block_object_dispose(&v21, 8);
  v11 = [v19 setWithObjects:{v18, v17, v16, v15, v14, v13, v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, 0}];
  v12 = supportedContextValueClasses_supportedContextValueClasses;
  supportedContextValueClasses_supportedContextValueClasses = v11;
}

@end