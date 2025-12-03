@interface SUUITracklistViewElement
- (NSArray)sections;
- (NSArray)tracks;
- (SUUIHeaderViewElement)header;
- (id)applyUpdatesWithElement:(id)element;
- (void)enumerateTracksUsingBlock:(id)block;
@end

@implementation SUUITracklistViewElement

- (void)enumerateTracksUsingBlock:(id)block
{
  blockCopy = block;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v9[3] = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__SUUITracklistViewElement_enumerateTracksUsingBlock___block_invoke;
  v6[3] = &unk_2798F91A8;
  v5 = blockCopy;
  v7 = v5;
  v8 = v9;
  [(SUUIViewElement *)self enumerateChildrenUsingBlock:v6];

  _Block_object_dispose(v9, 8);
}

void __54__SUUITracklistViewElement_enumerateTracksUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = objc_autoreleasePoolPush();
  if ([v4 elementType] == 146)
  {
    (*(*(a1 + 32) + 16))();
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  objc_autoreleasePoolPop(v3);
}

- (SUUIHeaderViewElement)header
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__58;
  v10 = __Block_byref_object_dispose__58;
  v11 = 0;
  children = [(SUUITracklistViewElement *)self children];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__SUUITracklistViewElement_header__block_invoke;
  v5[3] = &unk_2798FB628;
  v5[4] = &v6;
  [children enumerateObjectsUsingBlock:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __34__SUUITracklistViewElement_header__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 elementType] == 48)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (NSArray)sections
{
  sections = self->_sections;
  if (!sections)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = self->_sections;
    self->_sections = v4;

    children = [(SUUITracklistViewElement *)self children];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __36__SUUITracklistViewElement_sections__block_invoke;
    v9[3] = &unk_2798FB650;
    v9[4] = self;
    [children enumerateObjectsUsingBlock:v9];

    sections = self->_sections;
  }

  v7 = [(NSMutableArray *)sections count];
  if (v7)
  {
    v7 = self->_sections;
  }

  return v7;
}

void __36__SUUITracklistViewElement_sections__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 elementType] == 108)
  {
    [*(*(a1 + 32) + 280) addObject:v3];
  }
}

- (NSArray)tracks
{
  tracks = self->_tracks;
  if (!tracks)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = self->_tracks;
    self->_tracks = v4;

    children = [(SUUITracklistViewElement *)self children];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __34__SUUITracklistViewElement_tracks__block_invoke;
    v9[3] = &unk_2798FB650;
    v9[4] = self;
    [children enumerateObjectsUsingBlock:v9];

    tracks = self->_tracks;
  }

  v7 = [(NSMutableArray *)tracks count];
  if (v7)
  {
    v7 = self->_tracks;
  }

  return v7;
}

void __34__SUUITracklistViewElement_tracks__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 elementType] == 146)
  {
    [*(*(a1 + 32) + 288) addObject:v3];
  }
}

- (id)applyUpdatesWithElement:(id)element
{
  v9.receiver = self;
  v9.super_class = SUUITracklistViewElement;
  elementCopy = element;
  v5 = [(SUUIViewElement *)&v9 applyUpdatesWithElement:elementCopy];

  if (elementCopy != self || [v5 updateType])
  {
    sections = self->_sections;
    self->_sections = 0;

    tracks = self->_tracks;
    self->_tracks = 0;
  }

  return v5;
}

@end