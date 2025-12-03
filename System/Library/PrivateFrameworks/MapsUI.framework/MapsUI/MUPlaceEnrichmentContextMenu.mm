@interface MUPlaceEnrichmentContextMenu
- (MUPlaceEnrichmentActionHandler)enrichmentActionDelegate;
- (MUPlaceEnrichmentContextMenu)initWithFrame:(CGRect)frame;
- (MUPlaceEnrichmentSectionContextMenuDelegate)contextMenuDelegate;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
@end

@implementation MUPlaceEnrichmentContextMenu

- (MUPlaceEnrichmentActionHandler)enrichmentActionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_enrichmentActionDelegate);

  return WeakRetained;
}

- (MUPlaceEnrichmentSectionContextMenuDelegate)contextMenuDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_contextMenuDelegate);

  return WeakRetained;
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __86__MUPlaceEnrichmentContextMenu_contextMenuInteraction_configurationForMenuAtLocation___block_invoke;
  v6[3] = &unk_1E8219478;
  v6[4] = self;
  v4 = [MEMORY[0x1E69DC8D8] configurationWithIdentifier:0 previewProvider:0 actionProvider:v6];

  return v4;
}

id __86__MUPlaceEnrichmentContextMenu_contextMenuInteraction_configurationForMenuAtLocation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) contextMenuAction];
  v5 = [v4 enrichmentAction];
  v6 = [v5 objectForKey:@"subActions"];

  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__8957;
  v16 = __Block_byref_object_dispose__8958;
  v17 = [MEMORY[0x1E695DF70] array];
  objc_initWeak(&location, *(a1 + 32));
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __86__MUPlaceEnrichmentContextMenu_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_17;
  v9[3] = &unk_1E8219450;
  objc_copyWeak(&v10, &location);
  v9[4] = &v12;
  [v6 enumerateObjectsUsingBlock:v9];
  v7 = [MEMORY[0x1E69DCC60] menuWithChildren:v13[5]];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __86__MUPlaceEnrichmentContextMenu_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_17(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E69DC628];
  v5 = [v3 objectForKeyedSubscript:@"localizedTitle"];
  v6 = MEMORY[0x1E69DCAB8];
  v7 = [v3 objectForKeyedSubscript:@"glyphName"];
  v8 = [v6 _systemImageNamed:v7];
  v9 = [v3 objectForKeyedSubscript:@"localizedTitle"];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __86__MUPlaceEnrichmentContextMenu_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_2;
  v15 = &unk_1E82194F0;
  objc_copyWeak(&v17, (a1 + 40));
  v10 = v3;
  v16 = v10;
  v11 = [v4 actionWithTitle:v5 image:v8 identifier:v9 handler:&v12];

  [*(*(*(a1 + 32) + 8) + 40) addObject:{v11, v12, v13, v14, v15}];
  objc_destroyWeak(&v17);
}

void __86__MUPlaceEnrichmentContextMenu_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [WeakRetained enrichmentActionDelegate];
    v4 = *(a1 + 32);
    v5 = objc_loadWeakRetained((a1 + 40));
    [v3 performActionUsingArguments:v4 contextMenu:v5 completion:&__block_literal_global_8965];

    WeakRetained = v6;
  }
}

- (MUPlaceEnrichmentContextMenu)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MUPlaceEnrichmentContextMenu;
  v3 = [(MUPlaceEnrichmentContextMenu *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MUPlaceEnrichmentContextMenu *)v3 setContextMenuInteractionEnabled:1];
    [(MUPlaceEnrichmentContextMenu *)v4 setShowsMenuAsPrimaryAction:1];
  }

  return v4;
}

@end