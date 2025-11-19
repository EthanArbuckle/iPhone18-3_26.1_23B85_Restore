@interface MSOpenMailComposeViewControllerContext
+ (id)unarchiveFromData:(id)a3 error:(id *)a4;
- (MSOpenMailComposeViewControllerContext)initWithAutosaveIdentifier:(id)a3 compositionValues:(id)a4 attachments:(id)a5;
- (MSOpenMailComposeViewControllerContext)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MSOpenMailComposeViewControllerContext

- (MSOpenMailComposeViewControllerContext)initWithAutosaveIdentifier:(id)a3 compositionValues:(id)a4 attachments:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = MSOpenMailComposeViewControllerContext;
  v12 = [(MSOpenMailComposeViewControllerContext *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_autosaveIdentifier, a3);
    v14 = [v10 copy];
    compositionValues = v13->_compositionValues;
    v13->_compositionValues = v14;

    v16 = [v11 copy];
    attachments = v13->_attachments;
    v13->_attachments = v16;
  }

  return v13;
}

+ (id)unarchiveFromData:(id)a3 error:(id *)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_alloc(MEMORY[0x1E695DFD8]);
  v12[0] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v8 = [v6 initWithArray:v7];

  v9 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v8 fromData:v5 error:a4];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(MSOpenMailComposeViewControllerContext *)self autosaveIdentifier];
  [v8 encodeObject:v4 forKey:@"EFPropertyKey_autosaveIdentifier"];

  v5 = [(MSOpenMailComposeViewControllerContext *)self compositionValues];
  [v8 encodeObject:v5 forKey:@"EFPropertyKey_compositionValues"];

  v6 = [(MSOpenMailComposeViewControllerContext *)self attachments];
  [v8 encodeObject:v6 forKey:@"EFPropertyKey_attachments"];

  v7 = [(MSOpenMailComposeViewControllerContext *)self hostApplicationBundleIdentifier];
  [v8 encodeObject:v7 forKey:@"EFPropertyKey_hostApplicationBundleIdentifier"];
}

- (MSOpenMailComposeViewControllerContext)initWithCoder:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = MSOpenMailComposeViewControllerContext;
  v5 = [(MSOpenMailComposeViewControllerContext *)&v29 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_autosaveIdentifier"];
    autosaveIdentifier = v5->_autosaveIdentifier;
    v5->_autosaveIdentifier = v6;

    v28 = MEMORY[0x1E695DFD8];
    v27 = objc_opt_class();
    v26 = objc_opt_class();
    NSClassFromString(&cfstr_Mfmailcomposec.isa);
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [v28 setWithObjects:{v27, v26, v8, v9, v10, v11, v12, v13, v14, objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"EFPropertyKey_compositionValues"];
    compositionValues = v5->_compositionValues;
    v5->_compositionValues = v16;

    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    NSClassFromString(&cfstr_Mfmailcomposea.isa);
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"EFPropertyKey_attachments"];
    attachments = v5->_attachments;
    v5->_attachments = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_hostApplicationBundleIdentifier"];
    hostApplicationBundleIdentifier = v5->_hostApplicationBundleIdentifier;
    v5->_hostApplicationBundleIdentifier = v23;
  }

  return v5;
}

@end