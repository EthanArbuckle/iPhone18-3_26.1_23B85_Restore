@interface HKDisplayTypeBehavior
- (BOOL)isEqual:(id)equal;
- (HKDisplayTypeBehavior)init;
- (HKDisplayTypeBehavior)initWithStatisticsMergeStrategy:(unint64_t)strategy preferredCalendaryDayAlignment:(int64_t)alignment allowEditView:(BOOL)view allowsSourceReordering:(BOOL)reordering unitPreferenceChangeConfirmation:(BOOL)confirmation chartsRelativeData:(BOOL)data appearsInDataTypeSearch:(BOOL)search supportsAssociatedSamples:(BOOL)self0 canBecomeFavorite:(BOOL)self1 hidden:(BOOL)self2;
- (id)description;
- (unint64_t)hash;
@end

@implementation HKDisplayTypeBehavior

- (HKDisplayTypeBehavior)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKDisplayTypeBehavior)initWithStatisticsMergeStrategy:(unint64_t)strategy preferredCalendaryDayAlignment:(int64_t)alignment allowEditView:(BOOL)view allowsSourceReordering:(BOOL)reordering unitPreferenceChangeConfirmation:(BOOL)confirmation chartsRelativeData:(BOOL)data appearsInDataTypeSearch:(BOOL)search supportsAssociatedSamples:(BOOL)self0 canBecomeFavorite:(BOOL)self1 hidden:(BOOL)self2
{
  v19.receiver = self;
  v19.super_class = HKDisplayTypeBehavior;
  result = [(HKDisplayTypeBehavior *)&v19 init];
  if (result)
  {
    result->_statisticsMergeStrategy = strategy;
    result->_preferredCalendarDayAlignment = alignment;
    result->_allowEditView = view;
    result->_allowsSourceReordering = reordering;
    result->_unitPreferencesRequireChangeConfirmation = confirmation;
    result->_chartsRelativeData = data;
    result->_appearsInDataTypeSearch = search;
    result->_supportsAssociatedSamples = samples;
    result->_canBecomeFavorite = favorite;
    result->_hidden = hidden;
  }

  return result;
}

- (id)description
{
  v2 = "All";
  if (!self->_statisticsMergeStrategy)
  {
    v2 = "Best";
  }

  v3 = "Sleep";
  if (!self->_preferredCalendarDayAlignment)
  {
    v3 = "Natural";
  }

  v4 = "no";
  if (self->_allowEditView)
  {
    v5 = "YES";
  }

  else
  {
    v5 = "no";
  }

  if (self->_allowsSourceReordering)
  {
    v6 = "YES";
  }

  else
  {
    v6 = "no";
  }

  if (self->_unitPreferencesRequireChangeConfirmation)
  {
    v7 = "Confirmation";
  }

  else
  {
    v7 = "Simple";
  }

  if (self->_chartsRelativeData)
  {
    v8 = "Relative";
  }

  else
  {
    v8 = "Absolute";
  }

  if (self->_appearsInDataTypeSearch)
  {
    v9 = "YES";
  }

  else
  {
    v9 = "no";
  }

  if (self->_supportsAssociatedSamples)
  {
    v10 = "YES";
  }

  else
  {
    v10 = "no";
  }

  if (self->_canBecomeFavorite)
  {
    v4 = "YES";
  }

  if (self->_hidden)
  {
    v11 = " HIDDEN";
  }

  else
  {
    v11 = "";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"<HKDisplayTypeBehavior: Statistics: %s, Day: %s, Edit view enabled: %s Source reorderable: %s, Unit change: %s, Chart: %s, Search: %s, Associated Samples: %s, Favoritable: %s%s>", v2, v3, v5, v6, v7, v8, v9, v10, v4, v11];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_statisticsMergeStrategy == equalCopy[2] && self->_preferredCalendarDayAlignment == equalCopy[3] && self->_allowEditView == *(equalCopy + 8) && self->_allowsSourceReordering == *(equalCopy + 9) && self->_unitPreferencesRequireChangeConfirmation == *(equalCopy + 10) && self->_chartsRelativeData == *(equalCopy + 11) && self->_appearsInDataTypeSearch == *(equalCopy + 12) && self->_supportsAssociatedSamples == *(equalCopy + 13) && self->_canBecomeFavorite == *(equalCopy + 14) && self->_hidden == *(equalCopy + 15);

  return v5;
}

- (unint64_t)hash
{
  v2 = vmovl_u8(vshl_u8(*&self->_allowEditView, 0x706050403020101));
  v3 = vmovl_high_u16(v2);
  v4 = vmovl_u16(*v2.i8);
  *v4.i8 = veor_s8(veor_s8(*v4.i8, *v3.i8), veor_s8(*&vextq_s8(v4, v4, 8uLL), *&vextq_s8(v3, v3, 8uLL)));
  v5.i64[0] = v4.u32[0];
  v5.i64[1] = v4.u32[1];
  return *&veor_s8(v4.u32[0], *&vextq_s8(v5, v5, 8uLL)) ^ self->_preferredCalendarDayAlignment ^ self->_statisticsMergeStrategy;
}

@end