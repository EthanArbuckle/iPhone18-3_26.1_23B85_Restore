@interface MessageListCellLayoutValuesHelper
- (MessageListCellLayoutValuesHelper)init;
- (NSDirectionalEdgeInsets)systemLayoutMargins;
- (UIBackgroundConfiguration)defaultBackgroundConfiguration;
- (double)dynamicRowHeightWithSummary:(id)summary bounds:(CGRect)bounds;
- (id)layoutValuesForStyle:(int64_t)style;
- (void)invalidate;
- (void)setDefaultBackgroundConfiguration:(id)configuration;
- (void)setInMultiSelectionMode:(BOOL)mode;
- (void)setSupportsPopover:(BOOL)popover;
- (void)setSystemLayoutMargins:(NSDirectionalEdgeInsets)margins;
- (void)setTintColor:(id)color;
- (void)setTraitCollection:(id)collection;
- (void)updateTintColorFromView:(id)view;
@end

@implementation MessageListCellLayoutValuesHelper

- (MessageListCellLayoutValuesHelper)init
{
  v22.receiver = self;
  v22.super_class = MessageListCellLayoutValuesHelper;
  v2 = [(MessageListCellLayoutValuesHelper *)&v22 init];
  if (v2)
  {
    em_userDefaults = [MEMORY[0x277CBEBD0] em_userDefaults];
    v4 = *MEMORY[0x277D06C88];
    v2->_isAvatarHidden = [em_userDefaults BOOLForKey:*MEMORY[0x277D06C88]];
    objc_initWeak(&location, v2);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __41__MessageListCellLayoutValuesHelper_init__block_invoke;
    v18[3] = &unk_278188C80;
    objc_copyWeak(&v20, &location);
    v5 = em_userDefaults;
    v19 = v5;
    v6 = [v5 ef_observeKeyPath:v4 options:1 autoCancelToken:1 usingBlock:v18];
    isAvatarHiddenToken = v2->_isAvatarHiddenToken;
    v2->_isAvatarHiddenToken = v6;

    _init = [[_DefaultMessageListCellLayoutValues alloc] _init];
    defaultLayoutValues = v2->_defaultLayoutValues;
    v2->_defaultLayoutValues = _init;

    _init2 = [[_ExpandedMessageListCellLayoutValues alloc] _init];
    expandedLayoutValues = v2->_expandedLayoutValues;
    v2->_expandedLayoutValues = _init2;

    _init3 = [[_TopHitsMessageListCellLayoutValues alloc] _init];
    topHitsLayoutValues = v2->_topHitsLayoutValues;
    v2->_topHitsLayoutValues = _init3;

    _init4 = [[_GroupedSenderMessageListCellLayoutValues alloc] _init];
    groupedSenderLayoutValues = v2->_groupedSenderLayoutValues;
    v2->_groupedSenderLayoutValues = _init4;

    listPlainCellConfiguration = [MEMORY[0x277D751C0] listPlainCellConfiguration];
    [(MessageListCellLayoutValuesHelper *)v2 setDefaultBackgroundConfiguration:listPlainCellConfiguration];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __41__MessageListCellLayoutValuesHelper_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained setIsAvatarHidden:{objc_msgSend(*(a1 + 32), "BOOLForKey:", *MEMORY[0x277D06C88])}];
    WeakRetained = v3;
  }
}

- (double)dynamicRowHeightWithSummary:(id)summary bounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  summaryCopy = summary;
  defaultLayoutValues = [(MessageListCellLayoutValuesHelper *)self defaultLayoutValues];
  [defaultLayoutValues bodyLeading];
  v12 = [defaultLayoutValues actualLineCountForSummary:summaryCopy hasGeneratedSummary:0 bounds:{x + v11, y + 0.0, width - (v11 + 0.0), height}];

  [defaultLayoutValues heightWithNumberOfSummaryLines:v12 isAvatarHidden:{-[MessageListCellLayoutValuesHelper isAvatarHidden](self, "isAvatarHidden")}];
  v14 = v13;

  return v14;
}

- (id)layoutValuesForStyle:(int64_t)style
{
  if (style == 4)
  {
    groupedSenderLayoutValues = [(MessageListCellLayoutValuesHelper *)self groupedSenderLayoutValues];
  }

  else if (style == 3)
  {
    groupedSenderLayoutValues = [(MessageListCellLayoutValuesHelper *)self topHitsLayoutValues];
  }

  else
  {
    if (style == 2)
    {
      [(MessageListCellLayoutValuesHelper *)self expandedLayoutValues];
    }

    else
    {
      [(MessageListCellLayoutValuesHelper *)self defaultLayoutValues];
    }
    groupedSenderLayoutValues = ;
  }

  return groupedSenderLayoutValues;
}

- (void)invalidate
{
  defaultLayoutValues = [(MessageListCellLayoutValuesHelper *)self defaultLayoutValues];
  [defaultLayoutValues _invalidateAndNotify:1];

  expandedLayoutValues = [(MessageListCellLayoutValuesHelper *)self expandedLayoutValues];
  [expandedLayoutValues _invalidateAndNotify:1];

  topHitsLayoutValues = [(MessageListCellLayoutValuesHelper *)self topHitsLayoutValues];
  [topHitsLayoutValues _invalidateAndNotify:1];

  groupedSenderLayoutValues = [(MessageListCellLayoutValuesHelper *)self groupedSenderLayoutValues];
  [groupedSenderLayoutValues _invalidateAndNotify:1];
}

- (void)updateTintColorFromView:(id)view
{
  tintColor = [view tintColor];
  [(MessageListCellLayoutValuesHelper *)self setTintColor:tintColor];
}

- (void)setTraitCollection:(id)collection
{
  collectionCopy = collection;
  if (pthread_main_np() != 1)
  {
    [MessageListCellLayoutValuesHelper setTraitCollection:];
  }

  p_traitCollection = &self->_traitCollection;
  v6 = collectionCopy;
  if (self->_traitCollection != collectionCopy)
  {
    objc_storeStrong(p_traitCollection, collection);
    defaultLayoutValues = [(MessageListCellLayoutValuesHelper *)self defaultLayoutValues];
    [defaultLayoutValues setTraitCollection:collectionCopy];

    expandedLayoutValues = [(MessageListCellLayoutValuesHelper *)self expandedLayoutValues];
    [expandedLayoutValues setTraitCollection:collectionCopy];

    topHitsLayoutValues = [(MessageListCellLayoutValuesHelper *)self topHitsLayoutValues];
    [topHitsLayoutValues setTraitCollection:collectionCopy];

    groupedSenderLayoutValues = [(MessageListCellLayoutValuesHelper *)self groupedSenderLayoutValues];
    [groupedSenderLayoutValues setTraitCollection:collectionCopy];

    v6 = collectionCopy;
  }

  MEMORY[0x2821F96F8](p_traitCollection, v6);
}

- (void)setSupportsPopover:(BOOL)popover
{
  popoverCopy = popover;
  if (pthread_main_np() != 1)
  {
    [MessageListCellLayoutValuesHelper setSupportsPopover:];
  }

  if (self->_supportsPopover != popoverCopy)
  {
    self->_supportsPopover = popoverCopy;
    defaultLayoutValues = [(MessageListCellLayoutValuesHelper *)self defaultLayoutValues];
    [defaultLayoutValues setSupportsPopover:popoverCopy];

    expandedLayoutValues = [(MessageListCellLayoutValuesHelper *)self expandedLayoutValues];
    [expandedLayoutValues setSupportsPopover:popoverCopy];

    topHitsLayoutValues = [(MessageListCellLayoutValuesHelper *)self topHitsLayoutValues];
    [topHitsLayoutValues setSupportsPopover:popoverCopy];

    groupedSenderLayoutValues = [(MessageListCellLayoutValuesHelper *)self groupedSenderLayoutValues];
    [groupedSenderLayoutValues setSupportsPopover:popoverCopy];
  }
}

- (void)setTintColor:(id)color
{
  colorCopy = color;
  if (pthread_main_np() != 1)
  {
    [MessageListCellLayoutValuesHelper setTintColor:];
  }

  p_tintColor = &self->_tintColor;
  v6 = colorCopy;
  if (self->_tintColor != colorCopy)
  {
    objc_storeStrong(p_tintColor, color);
    defaultLayoutValues = [(MessageListCellLayoutValuesHelper *)self defaultLayoutValues];
    [defaultLayoutValues setTintColor:colorCopy];

    expandedLayoutValues = [(MessageListCellLayoutValuesHelper *)self expandedLayoutValues];
    [expandedLayoutValues setTintColor:colorCopy];

    topHitsLayoutValues = [(MessageListCellLayoutValuesHelper *)self topHitsLayoutValues];
    [topHitsLayoutValues setTintColor:colorCopy];

    groupedSenderLayoutValues = [(MessageListCellLayoutValuesHelper *)self groupedSenderLayoutValues];
    [groupedSenderLayoutValues setTintColor:colorCopy];

    v6 = colorCopy;
  }

  MEMORY[0x2821F96F8](p_tintColor, v6);
}

- (UIBackgroundConfiguration)defaultBackgroundConfiguration
{
  v2 = [(UIBackgroundConfiguration *)self->_defaultBackgroundConfiguration copy];

  return v2;
}

- (void)setDefaultBackgroundConfiguration:(id)configuration
{
  if (self->_defaultBackgroundConfiguration != configuration)
  {
    v5 = [configuration copy];
    defaultBackgroundConfiguration = self->_defaultBackgroundConfiguration;
    self->_defaultBackgroundConfiguration = v5;
    v7 = v5;

    defaultLayoutValues = [(MessageListCellLayoutValuesHelper *)self defaultLayoutValues];
    [defaultLayoutValues setDefaultBackgroundConfiguration:v7];

    expandedLayoutValues = [(MessageListCellLayoutValuesHelper *)self expandedLayoutValues];
    [expandedLayoutValues setDefaultBackgroundConfiguration:v7];

    topHitsLayoutValues = [(MessageListCellLayoutValuesHelper *)self topHitsLayoutValues];
    [topHitsLayoutValues setDefaultBackgroundConfiguration:v7];

    groupedSenderLayoutValues = [(MessageListCellLayoutValuesHelper *)self groupedSenderLayoutValues];
    [groupedSenderLayoutValues setDefaultBackgroundConfiguration:v7];
  }
}

- (void)setSystemLayoutMargins:(NSDirectionalEdgeInsets)margins
{
  v3.f64[0] = margins.top;
  v3.f64[1] = margins.leading;
  v4.f64[0] = margins.bottom;
  v4.f64[1] = margins.trailing;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_systemLayoutMargins.top, v3), vceqq_f64(*&self->_systemLayoutMargins.bottom, v4)))) & 1) == 0)
  {
    self->_systemLayoutMargins = margins;
    trailing = margins.trailing;
    leading = margins.leading;
    bottom = margins.bottom;
    top = margins.top;
    defaultLayoutValues = [(MessageListCellLayoutValuesHelper *)self defaultLayoutValues];
    [defaultLayoutValues setSystemLayoutMargins:{top, leading, bottom, trailing}];

    expandedLayoutValues = [(MessageListCellLayoutValuesHelper *)self expandedLayoutValues];
    [expandedLayoutValues setSystemLayoutMargins:{top, leading, bottom, trailing}];

    topHitsLayoutValues = [(MessageListCellLayoutValuesHelper *)self topHitsLayoutValues];
    [topHitsLayoutValues setSystemLayoutMargins:{top, leading, bottom, trailing}];

    groupedSenderLayoutValues = [(MessageListCellLayoutValuesHelper *)self groupedSenderLayoutValues];
    [groupedSenderLayoutValues setSystemLayoutMargins:{top, leading, bottom, trailing}];
  }
}

- (void)setInMultiSelectionMode:(BOOL)mode
{
  if (self->_inMultiSelectionMode != mode)
  {
    modeCopy = mode;
    self->_inMultiSelectionMode = mode;
    defaultLayoutValues = [(MessageListCellLayoutValuesHelper *)self defaultLayoutValues];
    [defaultLayoutValues setInMultiSelectionMode:modeCopy];

    expandedLayoutValues = [(MessageListCellLayoutValuesHelper *)self expandedLayoutValues];
    [expandedLayoutValues setInMultiSelectionMode:modeCopy];

    topHitsLayoutValues = [(MessageListCellLayoutValuesHelper *)self topHitsLayoutValues];
    [topHitsLayoutValues setInMultiSelectionMode:modeCopy];

    groupedSenderLayoutValues = [(MessageListCellLayoutValuesHelper *)self groupedSenderLayoutValues];
    [groupedSenderLayoutValues setInMultiSelectionMode:modeCopy];
  }
}

- (NSDirectionalEdgeInsets)systemLayoutMargins
{
  top = self->_systemLayoutMargins.top;
  leading = self->_systemLayoutMargins.leading;
  bottom = self->_systemLayoutMargins.bottom;
  trailing = self->_systemLayoutMargins.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (void)setTraitCollection:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)setSupportsPopover:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)setTintColor:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end