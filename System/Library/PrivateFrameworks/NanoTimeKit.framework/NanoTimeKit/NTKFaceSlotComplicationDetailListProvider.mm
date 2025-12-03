@interface NTKFaceSlotComplicationDetailListProvider
- (NSDiffableDataSourceSnapshot)pickerListDataSourceSnapshot;
- (NTKFaceSlotComplicationDetailListProvider)initWithRichSlot:(BOOL)slot complicationFamily:(int64_t)family complications:(id)complications selectedComplication:(id)complication;
- (void)_buildDataIfNeeded;
@end

@implementation NTKFaceSlotComplicationDetailListProvider

- (NTKFaceSlotComplicationDetailListProvider)initWithRichSlot:(BOOL)slot complicationFamily:(int64_t)family complications:(id)complications selectedComplication:(id)complication
{
  complicationsCopy = complications;
  complicationCopy = complication;
  v16.receiver = self;
  v16.super_class = NTKFaceSlotComplicationDetailListProvider;
  v12 = [(NTKFaceSlotComplicationDetailListProvider *)&v16 init];
  if (v12)
  {
    v13 = [MEMORY[0x277CBEB70] orderedSetWithArray:complicationsCopy];
    complications = v12->_complications;
    v12->_complications = v13;

    objc_storeStrong(&v12->_pickerSelectedItem, complication);
    v12->_pickerListProviderSlotIsRich = slot;
    v12->_pickerComplicationFamily = family;
  }

  return v12;
}

- (NSDiffableDataSourceSnapshot)pickerListDataSourceSnapshot
{
  [(NTKFaceSlotComplicationDetailListProvider *)self _buildDataIfNeeded];
  pickerListDataSourceSnapshot = self->_pickerListDataSourceSnapshot;

  return pickerListDataSourceSnapshot;
}

- (void)_buildDataIfNeeded
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (!self->_pickerListDataSourceSnapshot)
  {
    v3 = [[NTKFaceSlotComplicationDetailListProviderStringSectionInfo alloc] initWithGroupName:&stru_284110E98];
    v4 = objc_alloc_init(MEMORY[0x277CFB890]);
    v8[0] = v3;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
    [v4 appendSectionsWithIdentifiers:v5];

    complications = [(NTKFaceSlotComplicationDetailListProvider *)self complications];
    array = [complications array];
    [v4 appendItemsWithIdentifiers:array intoSectionWithIdentifier:v3];

    [(NTKFaceSlotComplicationDetailListProvider *)self setPickerListDataSourceSnapshot:v4];
  }
}

@end