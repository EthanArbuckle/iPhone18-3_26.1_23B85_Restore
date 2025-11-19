@interface NoteObject(SearchIndexable_UI)
- (id)searchableItemViewAttributeSet;
@end

@implementation NoteObject(SearchIndexable_UI)

- (id)searchableItemViewAttributeSet
{
  if (_os_feature_enabled_impl())
  {
    v2 = [MEMORY[0x1E69B7B58] makeNoteSearchResultViewWithNote:a1 attachmentURL:0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end