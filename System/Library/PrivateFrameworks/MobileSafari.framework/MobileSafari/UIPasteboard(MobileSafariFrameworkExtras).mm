@interface UIPasteboard(MobileSafariFrameworkExtras)
- (void)_safari_copyRichText:()MobileSafariFrameworkExtras withPlainTextFallback:;
- (void)safari_copyLinksForTabGroup:()MobileSafariFrameworkExtras;
- (void)safari_copyLinksForTabs:()MobileSafariFrameworkExtras;
@end

@implementation UIPasteboard(MobileSafariFrameworkExtras)

- (void)safari_copyLinksForTabGroup:()MobileSafariFrameworkExtras
{
  v4 = a3;
  richTextForPasteboard = [v4 richTextForPasteboard];
  plainTextForPasteboard = [v4 plainTextForPasteboard];

  if (richTextForPasteboard && plainTextForPasteboard)
  {
    [self _safari_copyRichText:richTextForPasteboard withPlainTextFallback:plainTextForPasteboard];
  }
}

- (void)safari_copyLinksForTabs:()MobileSafariFrameworkExtras
{
  v4 = MEMORY[0x1E696AAB0];
  v5 = a3;
  v8 = [v4 safari_richListOfLinksForTabs:v5];
  v6 = [MEMORY[0x1E696AEC0] safari_listOfLinksForTabs:v5];

  if (v8)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    [self _safari_copyRichText:v8 withPlainTextFallback:v6];
  }
}

- (void)_safari_copyRichText:()MobileSafariFrameworkExtras withPlainTextFallback:
{
  v21[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E696ACA0]);
  identifier = [*MEMORY[0x1E6982F90] identifier];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __88__UIPasteboard_MobileSafariFrameworkExtras___safari_copyRichText_withPlainTextFallback___block_invoke;
  v19[3] = &unk_1E721E8C8;
  v20 = v6;
  v10 = v6;
  [v8 registerItemForTypeIdentifier:identifier loadHandler:v19];

  identifier2 = [*MEMORY[0x1E6982F40] identifier];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __88__UIPasteboard_MobileSafariFrameworkExtras___safari_copyRichText_withPlainTextFallback___block_invoke_5;
  v17 = &unk_1E721E8C8;
  v18 = v7;
  v12 = v7;
  [v8 registerItemForTypeIdentifier:identifier2 loadHandler:&v14];

  v21[0] = v8;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:{1, v14, v15, v16, v17}];
  [self setItemProviders:v13];
}

@end