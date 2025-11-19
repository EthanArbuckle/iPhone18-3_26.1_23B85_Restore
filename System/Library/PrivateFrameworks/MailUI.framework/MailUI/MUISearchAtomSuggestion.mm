@interface MUISearchAtomSuggestion
+ (id)log;
+ (id)suggestionFromSpotlightSuggestion:(id)a3 shouldShowAvaters:(BOOL)a4;
- (UIImage)atomImage;
- (UIImage)image;
- (id)debugDescription;
- (id)ef_publicDescription;
- (id)predicateWithSelectedScope:(id)a3;
@end

@implementation MUISearchAtomSuggestion

+ (id)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__MUISearchAtomSuggestion_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_19 != -1)
  {
    dispatch_once(&log_onceToken_19, block);
  }

  v2 = log_log_19;

  return v2;
}

void __30__MUISearchAtomSuggestion_log__block_invoke(uint64_t a1)
{
  v4 = NSStringFromClass(*(a1 + 32));
  v1 = v4;
  v2 = os_log_create("com.apple.email", [v4 UTF8String]);
  v3 = log_log_19;
  log_log_19 = v2;
}

- (id)debugDescription
{
  v10.receiver = self;
  v10.super_class = MUISearchAtomSuggestion;
  v3 = [(MUISearchAtomSuggestion *)&v10 debugDescription];
  v4 = [(MUISearchAtomSuggestion *)self title];
  v5 = [(MUISearchAtomSuggestion *)self subtitle];
  v6 = @" - ";
  v7 = &stru_2826EE5B8;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = &stru_2826EE5B8;
  }

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ - %@%@%@", v3, v4, v6, v7];

  return v8;
}

- (id)ef_publicDescription
{
  v14.receiver = self;
  v14.super_class = MUISearchAtomSuggestion;
  v3 = [(MUISearchSuggestion *)&v14 ef_publicDescription];
  v4 = MEMORY[0x277D07198];
  v5 = [(MUISearchAtomSuggestion *)self title];
  v6 = [v4 partiallyRedactedStringForString:v5];

  v7 = MEMORY[0x277D07198];
  v8 = [(MUISearchAtomSuggestion *)self subtitle];
  v9 = [v7 partiallyRedactedStringForString:v8];

  v10 = @" - ";
  v11 = &stru_2826EE5B8;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v10 = &stru_2826EE5B8;
  }

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ - %@%@%@", v3, v6, v10, v11];

  return v12;
}

- (id)predicateWithSelectedScope:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(MUISearchAtomSuggestion *)a2 predicateWithSelectedScope:?];
  }

  v6 = [v5 predicateForSuggestion:self];

  return v6;
}

- (UIImage)image
{
  v2 = [(MUISearchSuggestion *)self category];
  v3 = [v2 image];

  return v3;
}

- (UIImage)atomImage
{
  v2 = [(MUISearchSuggestion *)self category];
  v3 = [v2 atomImage];

  return v3;
}

+ (id)suggestionFromSpotlightSuggestion:(id)a3 shouldShowAvaters:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [v5 suggestionTokens];
  v7 = [v6 lastObject];

  v8 = [v7 tokenKind];
  if (v4 && v8 == 16)
  {
    v9 = 0;
  }

  else
  {
    v10 = [v7 displayText];
    v11 = [v10 string];

    v12 = objc_opt_new();
    v13 = NSSelectorFromString(&cfstr_Itemsummary.isa);
    v14 = NSSelectorFromString(&cfstr_Name.isa);
    v15 = NSSelectorFromString(&cfstr_Emailaddresses.isa);
    v16 = NSSelectorFromString(&cfstr_Contactidentif.isa);
    if (objc_opt_respondsToSelector())
    {
      v17 = [v7 v13];
      v27 = v11;
      v18 = objc_opt_class();
      __79__MUISearchAtomSuggestion_suggestionFromSpotlightSuggestion_shouldShowAvaters___block_invoke(v18, &v27, v14, v17);
      v19 = v27;

      v26 = v12;
      v20 = objc_opt_class();
      __79__MUISearchAtomSuggestion_suggestionFromSpotlightSuggestion_shouldShowAvaters___block_invoke(v20, &v26, v15, v17);
      v21 = v26;

      v25 = 0;
      v22 = objc_opt_class();
      __79__MUISearchAtomSuggestion_suggestionFromSpotlightSuggestion_shouldShowAvaters___block_invoke(v22, &v25, v16, v17);
      v23 = v25;

      v12 = v21;
      v11 = v19;
    }

    v9 = [MUIGenericSuggestion genericSuggestionWithSpotlightSuggestion:v5];
  }

  return v9;
}

uint64_t __79__MUISearchAtomSuggestion_suggestionFromSpotlightSuggestion_shouldShowAvaters___block_invoke(uint64_t a1, void *a2, const char *a3, void *a4)
{
  v11 = a4;
  v6 = objc_opt_respondsToSelector();
  v7 = v11;
  if (v6)
  {
    v8 = [v11 a3];
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
      *a2 = v8;
    }

    v7 = v11;
  }

  return MEMORY[0x2821F96F8](v6, v7);
}

- (void)predicateWithSelectedScope:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MUISearchSuggestion.m" lineNumber:115 description:{@"Invalid parameter not satisfying: %@", @"scope"}];
}

@end