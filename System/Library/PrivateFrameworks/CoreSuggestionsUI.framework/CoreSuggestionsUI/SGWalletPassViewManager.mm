@interface SGWalletPassViewManager
- (SGWalletPassViewManager)initWithData:(id)data;
- (double)passTimeInterval;
- (id)addPassViewController;
- (id)icon;
- (id)organizationName;
- (id)passStyle;
- (id)passView;
- (id)passes;
- (id)title;
@end

@implementation SGWalletPassViewManager

- (id)addPassViewController
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v3 = getPKAddPassesViewControllerClass_softClass;
  v11 = getPKAddPassesViewControllerClass_softClass;
  if (!getPKAddPassesViewControllerClass_softClass)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __getPKAddPassesViewControllerClass_block_invoke;
    v7[3] = &unk_1E7CD9710;
    v7[4] = &v8;
    __getPKAddPassesViewControllerClass_block_invoke(v7);
    v3 = v9[3];
  }

  v4 = v3;
  _Block_object_dispose(&v8, 8);
  v5 = [[v3 alloc] initWithPass:self->_pass];

  return v5;
}

- (id)passView
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v3 = getPKPassViewClass_softClass;
  v11 = getPKPassViewClass_softClass;
  if (!getPKPassViewClass_softClass)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __getPKPassViewClass_block_invoke;
    v7[3] = &unk_1E7CD9710;
    v7[4] = &v8;
    __getPKPassViewClass_block_invoke(v7);
    v3 = v9[3];
  }

  v4 = v3;
  _Block_object_dispose(&v8, 8);
  v5 = [[v3 alloc] initWithPass:self->_pass content:5 suppressedContent:6];

  return v5;
}

- (id)icon
{
  pass = self->_pass;
  if (pass)
  {
    pass = [pass icon];
    v2 = vars8;
  }

  return pass;
}

- (id)passStyle
{
  style = [(PKPass *)self->_pass style];
  if (style > 8)
  {
    v3 = @"SuggestionsWalletPassStyleGeneric";
  }

  else
  {
    v3 = off_1E7CD92F0[style];
  }

  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CoreSuggestionsUI"];
  v5 = [v4 localizedStringForKey:v3 value:&stru_1F3012140 table:0];

  return v5;
}

- (double)passTimeInterval
{
  pass = self->_pass;
  if (!pass)
  {
    return 0.0;
  }

  relevantDate = [(PKPass *)pass relevantDate];

  if (!relevantDate)
  {
    return 0.0;
  }

  relevantDate2 = [(PKPass *)self->_pass relevantDate];
  [relevantDate2 timeIntervalSinceReferenceDate];
  v7 = v6;

  return v7;
}

- (id)organizationName
{
  pass = self->_pass;
  if (pass)
  {
    pass = [pass organizationName];
    v2 = vars8;
  }

  return pass;
}

- (id)title
{
  pass = self->_pass;
  if (pass)
  {
    localizedDescription = [(PKPass *)pass localizedDescription];
  }

  else
  {
    localizedDescription = &stru_1F3012140;
  }

  return localizedDescription;
}

- (id)passes
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = self->_pass;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (SGWalletPassViewManager)initWithData:(id)data
{
  dataCopy = data;
  v18.receiver = self;
  v18.super_class = SGWalletPassViewManager;
  v5 = [(SGWalletPassViewManager *)&v18 init];
  if (v5)
  {
    v6 = [dataCopy copy];
    passData = v5->_passData;
    v5->_passData = v6;

    if (v5->_passData)
    {
      v20 = 0;
      v21 = &v20;
      v22 = 0x2050000000;
      v8 = getPKPassClass_softClass;
      v23 = getPKPassClass_softClass;
      if (!getPKPassClass_softClass)
      {
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __getPKPassClass_block_invoke;
        v19[3] = &unk_1E7CD9710;
        v19[4] = &v20;
        __getPKPassClass_block_invoke(v19);
        v8 = v21[3];
      }

      v9 = v8;
      _Block_object_dispose(&v20, 8);
      v10 = [v8 alloc];
      v11 = v5->_passData;
      v17 = 0;
      v12 = [v10 initWithData:v11 error:&v17];
      v13 = v17;
      pass = v5->_pass;
      v5->_pass = v12;

      if (v13)
      {
        v15 = v5->_pass;
        v5->_pass = 0;
      }
    }
  }

  return v5;
}

@end