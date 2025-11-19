@interface ICHTMLSearchIndexerDataSource
@end

@implementation ICHTMLSearchIndexerDataSource

void __55__ICHTMLSearchIndexerDataSource_App__mainThreadContext__block_invoke(uint64_t a1)
{
  if (_UIApplicationIsExtension())
  {
    v2 = kICSearchTableRowAttribute_block_invoke_mainNoteContext;
    if (!kICSearchTableRowAttribute_block_invoke_mainNoteContext)
    {
      v3 = [objc_alloc(MEMORY[0x277D35930]) initForMainContext];
      v4 = kICSearchTableRowAttribute_block_invoke_mainNoteContext;
      kICSearchTableRowAttribute_block_invoke_mainNoteContext = v3;

      v2 = kICSearchTableRowAttribute_block_invoke_mainNoteContext;
    }

    v5 = [v2 managedObjectContext];
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  else
  {
    v12 = [NSClassFromString(&cfstr_Notesapp.isa) sharedNotesApp];
    v8 = [v12 noteContext];
    v9 = [v8 managedObjectContext];
    v10 = *(*(a1 + 32) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v7 = v12;
  }
}

@end