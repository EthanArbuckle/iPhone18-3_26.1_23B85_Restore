@interface AddToNewsUIActivity
+ (id)activityWithTabDocument:(id)a3 error:(id *)a4;
- (AddToNewsUIActivity)initWithApplicationExtension:(id)a3 tabDocument:(id)a4;
- (BOOL)canPerformWithActivityItems:(id)a3;
- (void)prepareWithActivityItems:(id)a3;
@end

@implementation AddToNewsUIActivity

+ (id)activityWithTabDocument:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [MEMORY[0x277CCA9C8] extensionWithIdentifier:@"com.apple.news.openinnews" error:a4];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 _plugIn];
    v9 = [v8 userElection];

    if (!v9)
    {
      v12 = 0;
      if (([v7 attemptOptIn:&v12] & 1) == 0)
      {
        NSLog(@"Extension optIn failed");
      }
    }

    v10 = [[AddToNewsUIActivity alloc] initWithApplicationExtension:v7 tabDocument:v5];
  }

  else if (a4 && !*a4)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:4 userInfo:0];
    *a4 = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (AddToNewsUIActivity)initWithApplicationExtension:(id)a3 tabDocument:(id)a4
{
  v7 = a4;
  v12.receiver = self;
  v12.super_class = AddToNewsUIActivity;
  v8 = [(UIApplicationExtensionActivity *)&v12 initWithApplicationExtension:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_tabDocument, a4);
    v10 = v9;
  }

  return v9;
}

- (BOOL)canPerformWithActivityItems:(id)a3
{
  v4 = [(TabDocument *)self->_tabDocument URL];
  if (![v4 safari_isHTTPFamilyURL] || -[TabDocument isPDFDocument](self->_tabDocument, "isPDFDocument") || -[TabDocument isDisplayingStandaloneImage](self->_tabDocument, "isDisplayingStandaloneImage"))
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = ![(TabDocument *)self->_tabDocument isDisplayingStandaloneMedia];
  }

  return v5;
}

- (void)prepareWithActivityItems:(id)a3
{
  v23[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(TabDocument *)self->_tabDocument titleForSharing];
  v6 = [(TabDocument *)self->_tabDocument URL];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || (v9 = objc_alloc_init(MEMORY[0x277CCA9D8]), v10 = *MEMORY[0x277CCA0E8], v22[0] = @"FRItemHasRSSFeed", v22[1] = v10, v23[0] = MEMORY[0x277CBEC28], v11 = objc_alloc(MEMORY[0x277CCAA88]), v12 = [v11 initWithItem:v5 typeIdentifier:*MEMORY[0x277CC2130]], v21[0] = v12, v13 = objc_alloc(MEMORY[0x277CCAA88]), v14 = objc_msgSend(v13, "initWithItem:typeIdentifier:", v7, *MEMORY[0x277CC2190]), v21[1] = v14, objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v21, 2), v15 = objc_claimAutoreleasedReturnValue(), v23[1] = v15, objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v23, v22, 2), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "setUserInfo:", v16), v16, v15, v14, v12, !v9))
  {
    v18.receiver = self;
    v18.super_class = AddToNewsUIActivity;
    [(UIApplicationExtensionActivity *)&v18 prepareWithActivityItems:v4];
  }

  else
  {
    v20 = v9;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
    v19.receiver = self;
    v19.super_class = AddToNewsUIActivity;
    [(UIApplicationExtensionActivity *)&v19 prepareWithActivityItems:v17];
  }
}

@end