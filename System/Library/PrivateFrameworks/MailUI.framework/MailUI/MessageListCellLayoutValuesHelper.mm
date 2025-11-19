@interface MessageListCellLayoutValuesHelper
- (MessageListCellLayoutValuesHelper)init;
- (NSDirectionalEdgeInsets)systemLayoutMargins;
- (UIBackgroundConfiguration)defaultBackgroundConfiguration;
- (double)dynamicRowHeightWithSummary:(id)a3 bounds:(CGRect)a4;
- (id)layoutValuesForStyle:(int64_t)a3;
- (void)invalidate;
- (void)setDefaultBackgroundConfiguration:(id)a3;
- (void)setInMultiSelectionMode:(BOOL)a3;
- (void)setSupportsPopover:(BOOL)a3;
- (void)setSystemLayoutMargins:(NSDirectionalEdgeInsets)a3;
- (void)setTintColor:(id)a3;
- (void)setTraitCollection:(id)a3;
- (void)updateTintColorFromView:(id)a3;
@end

@implementation MessageListCellLayoutValuesHelper

- (MessageListCellLayoutValuesHelper)init
{
  v22.receiver = self;
  v22.super_class = MessageListCellLayoutValuesHelper;
  v2 = [(MessageListCellLayoutValuesHelper *)&v22 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEBD0] em_userDefaults];
    v4 = *MEMORY[0x277D06C88];
    v2->_isAvatarHidden = [v3 BOOLForKey:*MEMORY[0x277D06C88]];
    objc_initWeak(&location, v2);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __41__MessageListCellLayoutValuesHelper_init__block_invoke;
    v18[3] = &unk_278188C80;
    objc_copyWeak(&v20, &location);
    v5 = v3;
    v19 = v5;
    v6 = [v5 ef_observeKeyPath:v4 options:1 autoCancelToken:1 usingBlock:v18];
    isAvatarHiddenToken = v2->_isAvatarHiddenToken;
    v2->_isAvatarHiddenToken = v6;

    v8 = [[_DefaultMessageListCellLayoutValues alloc] _init];
    defaultLayoutValues = v2->_defaultLayoutValues;
    v2->_defaultLayoutValues = v8;

    v10 = [[_ExpandedMessageListCellLayoutValues alloc] _init];
    expandedLayoutValues = v2->_expandedLayoutValues;
    v2->_expandedLayoutValues = v10;

    v12 = [[_TopHitsMessageListCellLayoutValues alloc] _init];
    topHitsLayoutValues = v2->_topHitsLayoutValues;
    v2->_topHitsLayoutValues = v12;

    v14 = [[_GroupedSenderMessageListCellLayoutValues alloc] _init];
    groupedSenderLayoutValues = v2->_groupedSenderLayoutValues;
    v2->_groupedSenderLayoutValues = v14;

    v16 = [MEMORY[0x277D751C0] listPlainCellConfiguration];
    [(MessageListCellLayoutValuesHelper *)v2 setDefaultBackgroundConfiguration:v16];

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

- (double)dynamicRowHeightWithSummary:(id)a3 bounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v10 = [(MessageListCellLayoutValuesHelper *)self defaultLayoutValues];
  [v10 bodyLeading];
  v12 = [v10 actualLineCountForSummary:v9 hasGeneratedSummary:0 bounds:{x + v11, y + 0.0, width - (v11 + 0.0), height}];

  [v10 heightWithNumberOfSummaryLines:v12 isAvatarHidden:{-[MessageListCellLayoutValuesHelper isAvatarHidden](self, "isAvatarHidden")}];
  v14 = v13;

  return v14;
}

- (id)layoutValuesForStyle:(int64_t)a3
{
  if (a3 == 4)
  {
    v3 = [(MessageListCellLayoutValuesHelper *)self groupedSenderLayoutValues];
  }

  else if (a3 == 3)
  {
    v3 = [(MessageListCellLayoutValuesHelper *)self topHitsLayoutValues];
  }

  else
  {
    if (a3 == 2)
    {
      [(MessageListCellLayoutValuesHelper *)self expandedLayoutValues];
    }

    else
    {
      [(MessageListCellLayoutValuesHelper *)self defaultLayoutValues];
    }
    v3 = ;
  }

  return v3;
}

- (void)invalidate
{
  v3 = [(MessageListCellLayoutValuesHelper *)self defaultLayoutValues];
  [v3 _invalidateAndNotify:1];

  v4 = [(MessageListCellLayoutValuesHelper *)self expandedLayoutValues];
  [v4 _invalidateAndNotify:1];

  v5 = [(MessageListCellLayoutValuesHelper *)self topHitsLayoutValues];
  [v5 _invalidateAndNotify:1];

  v6 = [(MessageListCellLayoutValuesHelper *)self groupedSenderLayoutValues];
  [v6 _invalidateAndNotify:1];
}

- (void)updateTintColorFromView:(id)a3
{
  v4 = [a3 tintColor];
  [(MessageListCellLayoutValuesHelper *)self setTintColor:v4];
}

- (void)setTraitCollection:(id)a3
{
  v11 = a3;
  if (pthread_main_np() != 1)
  {
    [MessageListCellLayoutValuesHelper setTraitCollection:];
  }

  p_traitCollection = &self->_traitCollection;
  v6 = v11;
  if (self->_traitCollection != v11)
  {
    objc_storeStrong(p_traitCollection, a3);
    v7 = [(MessageListCellLayoutValuesHelper *)self defaultLayoutValues];
    [v7 setTraitCollection:v11];

    v8 = [(MessageListCellLayoutValuesHelper *)self expandedLayoutValues];
    [v8 setTraitCollection:v11];

    v9 = [(MessageListCellLayoutValuesHelper *)self topHitsLayoutValues];
    [v9 setTraitCollection:v11];

    v10 = [(MessageListCellLayoutValuesHelper *)self groupedSenderLayoutValues];
    [v10 setTraitCollection:v11];

    v6 = v11;
  }

  MEMORY[0x2821F96F8](p_traitCollection, v6);
}

- (void)setSupportsPopover:(BOOL)a3
{
  v3 = a3;
  if (pthread_main_np() != 1)
  {
    [MessageListCellLayoutValuesHelper setSupportsPopover:];
  }

  if (self->_supportsPopover != v3)
  {
    self->_supportsPopover = v3;
    v5 = [(MessageListCellLayoutValuesHelper *)self defaultLayoutValues];
    [v5 setSupportsPopover:v3];

    v6 = [(MessageListCellLayoutValuesHelper *)self expandedLayoutValues];
    [v6 setSupportsPopover:v3];

    v7 = [(MessageListCellLayoutValuesHelper *)self topHitsLayoutValues];
    [v7 setSupportsPopover:v3];

    v8 = [(MessageListCellLayoutValuesHelper *)self groupedSenderLayoutValues];
    [v8 setSupportsPopover:v3];
  }
}

- (void)setTintColor:(id)a3
{
  v11 = a3;
  if (pthread_main_np() != 1)
  {
    [MessageListCellLayoutValuesHelper setTintColor:];
  }

  p_tintColor = &self->_tintColor;
  v6 = v11;
  if (self->_tintColor != v11)
  {
    objc_storeStrong(p_tintColor, a3);
    v7 = [(MessageListCellLayoutValuesHelper *)self defaultLayoutValues];
    [v7 setTintColor:v11];

    v8 = [(MessageListCellLayoutValuesHelper *)self expandedLayoutValues];
    [v8 setTintColor:v11];

    v9 = [(MessageListCellLayoutValuesHelper *)self topHitsLayoutValues];
    [v9 setTintColor:v11];

    v10 = [(MessageListCellLayoutValuesHelper *)self groupedSenderLayoutValues];
    [v10 setTintColor:v11];

    v6 = v11;
  }

  MEMORY[0x2821F96F8](p_tintColor, v6);
}

- (UIBackgroundConfiguration)defaultBackgroundConfiguration
{
  v2 = [(UIBackgroundConfiguration *)self->_defaultBackgroundConfiguration copy];

  return v2;
}

- (void)setDefaultBackgroundConfiguration:(id)a3
{
  if (self->_defaultBackgroundConfiguration != a3)
  {
    v5 = [a3 copy];
    defaultBackgroundConfiguration = self->_defaultBackgroundConfiguration;
    self->_defaultBackgroundConfiguration = v5;
    v7 = v5;

    v8 = [(MessageListCellLayoutValuesHelper *)self defaultLayoutValues];
    [v8 setDefaultBackgroundConfiguration:v7];

    v9 = [(MessageListCellLayoutValuesHelper *)self expandedLayoutValues];
    [v9 setDefaultBackgroundConfiguration:v7];

    v10 = [(MessageListCellLayoutValuesHelper *)self topHitsLayoutValues];
    [v10 setDefaultBackgroundConfiguration:v7];

    v11 = [(MessageListCellLayoutValuesHelper *)self groupedSenderLayoutValues];
    [v11 setDefaultBackgroundConfiguration:v7];
  }
}

- (void)setSystemLayoutMargins:(NSDirectionalEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.leading;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.trailing;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_systemLayoutMargins.top, v3), vceqq_f64(*&self->_systemLayoutMargins.bottom, v4)))) & 1) == 0)
  {
    self->_systemLayoutMargins = a3;
    trailing = a3.trailing;
    leading = a3.leading;
    bottom = a3.bottom;
    top = a3.top;
    v6 = [(MessageListCellLayoutValuesHelper *)self defaultLayoutValues];
    [v6 setSystemLayoutMargins:{top, leading, bottom, trailing}];

    v7 = [(MessageListCellLayoutValuesHelper *)self expandedLayoutValues];
    [v7 setSystemLayoutMargins:{top, leading, bottom, trailing}];

    v8 = [(MessageListCellLayoutValuesHelper *)self topHitsLayoutValues];
    [v8 setSystemLayoutMargins:{top, leading, bottom, trailing}];

    v9 = [(MessageListCellLayoutValuesHelper *)self groupedSenderLayoutValues];
    [v9 setSystemLayoutMargins:{top, leading, bottom, trailing}];
  }
}

- (void)setInMultiSelectionMode:(BOOL)a3
{
  if (self->_inMultiSelectionMode != a3)
  {
    v4 = a3;
    self->_inMultiSelectionMode = a3;
    v6 = [(MessageListCellLayoutValuesHelper *)self defaultLayoutValues];
    [v6 setInMultiSelectionMode:v4];

    v7 = [(MessageListCellLayoutValuesHelper *)self expandedLayoutValues];
    [v7 setInMultiSelectionMode:v4];

    v8 = [(MessageListCellLayoutValuesHelper *)self topHitsLayoutValues];
    [v8 setInMultiSelectionMode:v4];

    v9 = [(MessageListCellLayoutValuesHelper *)self groupedSenderLayoutValues];
    [v9 setInMultiSelectionMode:v4];
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