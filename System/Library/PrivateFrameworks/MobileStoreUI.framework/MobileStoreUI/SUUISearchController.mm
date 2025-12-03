@interface SUUISearchController
- (SUUISearchBar)searchBar;
- (void)_setSuffix:(id)suffix;
- (void)setActive:(BOOL)active;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SUUISearchController

- (void)_setSuffix:(id)suffix
{
  v62[1] = *MEMORY[0x277D85DE8];
  suffixCopy = suffix;
  if (!self->_suffixLabel)
  {
    v5 = objc_alloc_init(MEMORY[0x277D756B8]);
    suffixLabel = self->_suffixLabel;
    self->_suffixLabel = v5;

    [(UILabel *)self->_suffixLabel setAutoresizingMask:1];
    v7 = self->_suffixLabel;
    v8 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
    [(UILabel *)v7 setTextColor:v8];

    v9 = self->_suffixLabel;
    v10 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
    [(UILabel *)v9 setFont:v10];

    v11 = self->_suffixLabel;
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v11 setBackgroundColor:clearColor];

    [(UILabel *)self->_suffixLabel setHidden:[(SUUISearchController *)self isActive]];
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice userInterfaceIdiom] == 1)
    {
      mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
      keyWindow = [mEMORY[0x277D75128] keyWindow];
      [keyWindow bounds];
      if (v16 > SUUICompactThreshold())
      {
        [(SUUISearchController *)self delegate];
        v18 = v17 = suffixCopy;
        v19 = [v18 searchControllerClientContext:self];
        shouldForceTransientSearchControllerBahavior = [v19 shouldForceTransientSearchControllerBahavior];

        suffixCopy = v17;
        if ((shouldForceTransientSearchControllerBahavior & 1) == 0)
        {
          searchBar = [(SUUISearchController *)self searchBar];
          searchField = [searchBar searchField];
          [searchField addSubview:self->_suffixLabel];
LABEL_9:

          goto LABEL_10;
        }

LABEL_8:
        searchBar = [(SUUISearchController *)self searchBar];
        searchField = [searchBar searchField];
        _clearButton = [searchField _clearButton];
        [_clearButton addSubview:self->_suffixLabel];

        goto LABEL_9;
      }
    }

    goto LABEL_8;
  }

LABEL_10:
  [(UILabel *)self->_suffixLabel setText:suffixCopy];
  [(UILabel *)self->_suffixLabel sizeToFit];
  [(UILabel *)self->_suffixLabel frame];
  v25 = v24;
  v27 = v26;
  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice2 userInterfaceIdiom] != 1)
  {
LABEL_15:

    goto LABEL_16;
  }

  mEMORY[0x277D75128]2 = [MEMORY[0x277D75128] sharedApplication];
  keyWindow2 = [mEMORY[0x277D75128]2 keyWindow];
  [keyWindow2 bounds];
  if (v31 <= SUUICompactThreshold())
  {

    goto LABEL_15;
  }

  [(SUUISearchController *)self delegate];
  v33 = v32 = suffixCopy;
  v34 = [v33 searchControllerClientContext:self];
  shouldForceTransientSearchControllerBahavior2 = [v34 shouldForceTransientSearchControllerBahavior];

  suffixCopy = v32;
  if ((shouldForceTransientSearchControllerBahavior2 & 1) == 0)
  {
    superview = [(UILabel *)self->_suffixLabel superview];
    [superview frame];
    v38 = v37 - v25 + -30.0;

    v39 = 8.0;
    goto LABEL_17;
  }

LABEL_16:
  v38 = -5.0 - v25;
  v39 = 3.0;
LABEL_17:
  [(UILabel *)self->_suffixLabel setFrame:v38, v39, v25, v27];
  searchBar2 = [(SUUISearchController *)self searchBar];
  searchField2 = [searchBar2 searchField];

  v41 = objc_alloc_init(MEMORY[0x277CCAB68]);
  paddingString = self->_paddingString;
  self->_paddingString = v41;

  v43 = suffixCopy;
  if ([suffixCopy length])
  {
    v44 = 0;
    v45 = *MEMORY[0x277D740A8];
    do
    {
      [(NSMutableString *)self->_paddingString appendString:@"_", searchField2];
      v46 = self->_paddingString;
      v61 = v45;
      font = [searchField2 font];
      v62[0] = font;
      v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:&v61 count:1];
      [(NSMutableString *)v46 sizeWithAttributes:v48];
      v50 = v49;

      if (v50 > v25)
      {
        break;
      }

      ++v44;
    }

    while (v44 < [v43 length]);
  }

  searchBar3 = [(SUUISearchController *)self searchBar];
  searchField3 = [searchBar3 searchField];
  text = [searchField3 text];
  isNaturallyRTL = [text isNaturallyRTL];

  if ((isNaturallyRTL & 1) == 0)
  {
    searchBar4 = [(SUUISearchController *)self searchBar];
    searchField4 = [searchBar4 searchField];
    if (([(SUUISearchController *)self isActive]& 1) != 0)
    {
      v57 = 0;
    }

    else
    {
      v57 = self->_paddingString;
    }

    clearColor2 = [MEMORY[0x277D75348] clearColor];
    [searchField4 _setSuffix:v57 withColor:clearColor2];
  }
}

- (void)setActive:(BOOL)active
{
  activeCopy = active;
  searchBar = [(SUUISearchController *)self searchBar];
  text = [searchBar text];
  v15.receiver = self;
  v15.super_class = SUUISearchController;
  [(SUUISearchController *)&v15 setActive:activeCopy];
  searchField = [searchBar searchField];
  [searchField setText:text];

  [searchBar setShowsSearchResultsButton:0];
  [(UILabel *)self->_suffixLabel setHidden:activeCopy];
  searchField2 = [searchBar searchField];
  if (([(SUUISearchController *)self isActive]& 1) != 0)
  {
    paddingString = 0;
  }

  else
  {
    paddingString = self->_paddingString;
  }

  clearColor = [MEMORY[0x277D75348] clearColor];
  [searchField2 _setSuffix:paddingString withColor:clearColor];

  if (!activeCopy)
  {
    v11 = dispatch_time(0, 300000000);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __34__SUUISearchController_setActive___block_invoke;
    v12[3] = &unk_2798F5AF8;
    v13 = searchBar;
    selfCopy = self;
    dispatch_after(v11, MEMORY[0x277D85CD0], v12);
  }
}

void __34__SUUISearchController_setActive___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) searchField];
  if ([*(a1 + 40) isActive])
  {
    v2 = 0;
  }

  else
  {
    v2 = *(*(a1 + 40) + 1440);
  }

  v3 = [MEMORY[0x277D75348] clearColor];
  [v4 _setSuffix:v2 withColor:v3];
}

- (SUUISearchBar)searchBar
{
  searchBar = self->_searchBar;
  if (!searchBar)
  {
    v4 = objc_alloc_init(SUUISearchBar);
    v5 = self->_searchBar;
    self->_searchBar = v4;

    searchBar = self->_searchBar;
  }

  return searchBar;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = SUUISearchController;
  coordinatorCopy = coordinator;
  [(SUUISearchController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8 = [(SUUISearchController *)self delegate:v9.receiver];
  [v8 searchControllerWillTransitionToSize:coordinatorCopy withTransitionCoordinator:{width, height}];
}

@end