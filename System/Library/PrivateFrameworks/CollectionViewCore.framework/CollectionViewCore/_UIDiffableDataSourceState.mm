@interface _UIDiffableDataSourceState
- (BOOL)isEqual:(id)equal;
- (NSOrderedSet)identifiers;
- (NSOrderedSet)sections;
- (NSString)description;
- (_UIDiffableDataSourceState)init;
- (_UIDiffableDataSourceState)initWithGenerationID:(id)d identifiers:(id)identifiers sections:(id)sections dataSourceSnapshot:(id)snapshot identifiersHaveGuaranteedPerformance:(BOOL)performance sectionsHaveGuaranteedPerformance:(BOOL)guaranteedPerformance;
- (_UIDiffableDataSourceState)initWithState:(id)state;
- (_UIDiffableDataSourceState)initWithStateAdvancingGenerationID:(id)d;
- (id)copyWithZone:(_NSZone *)zone;
- (id)indexPathForItemIdentifier:(id)identifier;
- (id)itemIdentifierForIndexPath:(id)path;
- (id)itemIdentifiersInSectionWithIdentifier:(id)identifier;
- (id)sectionIdentifierForIndex:(int64_t)index;
- (id)sectionIdentifierForSectionContainingItemIdentifier:(id)identifier;
- (id)sectionIndexesForItemIndexRange:(_NSRange)range;
- (int64_t)indexOfItemIdentifier:(id)identifier;
- (int64_t)indexOfSectionIdentifier:(id)identifier;
- (int64_t)numberOfItemsInSection:(id)section;
- (void)ensureOrderedSetsHaveGuaranteedPerformance;
- (void)validateIdentifiers;
@end

@implementation _UIDiffableDataSourceState

- (_UIDiffableDataSourceState)init
{
  uUID = [MEMORY[0x277CCAD78] UUID];
  v4 = objc_alloc_init(MEMORY[0x277CBEB70]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB70]);
  v6 = objc_alloc_init(_UIDataSourceSnapshotter);
  v7 = [(_UIDiffableDataSourceState *)self initWithGenerationID:uUID identifiers:v4 sections:v5 dataSourceSnapshot:v6 identifiersHaveGuaranteedPerformance:1 sectionsHaveGuaranteedPerformance:1];

  return v7;
}

- (NSOrderedSet)identifiers
{
  if (self->_identifierLookupCount >= 0xA && !self->_guaranteedPerformanceIdentifiers)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB70]) initWithOrderedSet:self->_identifiers];
    guaranteedPerformanceIdentifiers = self->_guaranteedPerformanceIdentifiers;
    self->_guaranteedPerformanceIdentifiers = v3;
  }

  identifiers = self->_guaranteedPerformanceIdentifiers;
  if (!identifiers)
  {
    identifiers = self->_identifiers;
  }

  return identifiers;
}

- (void)ensureOrderedSetsHaveGuaranteedPerformance
{
  if (!self->_guaranteedPerformanceIdentifiers)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB70]) initWithOrderedSet:self->_identifiers];
    guaranteedPerformanceIdentifiers = self->_guaranteedPerformanceIdentifiers;
    self->_guaranteedPerformanceIdentifiers = v3;
  }

  if (!self->_guaranteedPerformanceSections)
  {
    self->_guaranteedPerformanceSections = [objc_alloc(MEMORY[0x277CBEB70]) initWithOrderedSet:self->_sections];

    MEMORY[0x2821F96F8]();
  }
}

- (NSOrderedSet)sections
{
  if (self->_sectionLookupCount >= 0xA && !self->_guaranteedPerformanceSections)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB70]) initWithOrderedSet:self->_sections];
    guaranteedPerformanceSections = self->_guaranteedPerformanceSections;
    self->_guaranteedPerformanceSections = v3;
  }

  sections = self->_guaranteedPerformanceSections;
  if (!sections)
  {
    sections = self->_sections;
  }

  return sections;
}

- (_UIDiffableDataSourceState)initWithState:(id)state
{
  stateCopy = state;
  HaveGuaranteedPerformanceBeforeCopyingState = _ensureOrderedSetsHaveGuaranteedPerformanceBeforeCopyingState(stateCopy);
  generationID = [stateCopy generationID];
  identifiers = [stateCopy identifiers];
  sections = [stateCopy sections];
  dataSourceSnapshot = [stateCopy dataSourceSnapshot];
  v10 = [(_UIDiffableDataSourceState *)self initWithGenerationID:generationID identifiers:identifiers sections:sections dataSourceSnapshot:dataSourceSnapshot];

  if (HaveGuaranteedPerformanceBeforeCopyingState && v10)
  {
    guaranteedPerformanceIdentifiers = [stateCopy guaranteedPerformanceIdentifiers];
    guaranteedPerformanceIdentifiers = v10->_guaranteedPerformanceIdentifiers;
    v10->_guaranteedPerformanceIdentifiers = guaranteedPerformanceIdentifiers;

    guaranteedPerformanceSections = [stateCopy guaranteedPerformanceSections];
    guaranteedPerformanceSections = v10->_guaranteedPerformanceSections;
    v10->_guaranteedPerformanceSections = guaranteedPerformanceSections;
  }

  return v10;
}

- (_UIDiffableDataSourceState)initWithStateAdvancingGenerationID:(id)d
{
  dCopy = d;
  HaveGuaranteedPerformanceBeforeCopyingState = _ensureOrderedSetsHaveGuaranteedPerformanceBeforeCopyingState(dCopy);
  uUID = [MEMORY[0x277CCAD78] UUID];
  identifiers = [dCopy identifiers];
  sections = [dCopy sections];
  dataSourceSnapshot = [dCopy dataSourceSnapshot];
  v10 = [(_UIDiffableDataSourceState *)self initWithGenerationID:uUID identifiers:identifiers sections:sections dataSourceSnapshot:dataSourceSnapshot];

  if (HaveGuaranteedPerformanceBeforeCopyingState && v10)
  {
    guaranteedPerformanceIdentifiers = [dCopy guaranteedPerformanceIdentifiers];
    guaranteedPerformanceIdentifiers = v10->_guaranteedPerformanceIdentifiers;
    v10->_guaranteedPerformanceIdentifiers = guaranteedPerformanceIdentifiers;

    guaranteedPerformanceSections = [dCopy guaranteedPerformanceSections];
    guaranteedPerformanceSections = v10->_guaranteedPerformanceSections;
    v10->_guaranteedPerformanceSections = guaranteedPerformanceSections;
  }

  return v10;
}

- (_UIDiffableDataSourceState)initWithGenerationID:(id)d identifiers:(id)identifiers sections:(id)sections dataSourceSnapshot:(id)snapshot identifiersHaveGuaranteedPerformance:(BOOL)performance sectionsHaveGuaranteedPerformance:(BOOL)guaranteedPerformance
{
  dCopy = d;
  identifiersCopy = identifiers;
  sectionsCopy = sections;
  snapshotCopy = snapshot;
  if (dCopy)
  {
    if (identifiersCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceState.m" lineNumber:142 description:{@"Invalid parameter not satisfying: %@", @"generationID"}];

    if (identifiersCopy)
    {
LABEL_3:
      if (sectionsCopy)
      {
        goto LABEL_4;
      }

LABEL_21:
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceState.m" lineNumber:144 description:{@"Invalid parameter not satisfying: %@", @"sections"}];

      if (snapshotCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_22;
    }
  }

  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceState.m" lineNumber:143 description:{@"Invalid parameter not satisfying: %@", @"identifiers"}];

  if (!sectionsCopy)
  {
    goto LABEL_21;
  }

LABEL_4:
  if (snapshotCopy)
  {
    goto LABEL_5;
  }

LABEL_22:
  currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceState.m" lineNumber:145 description:{@"Invalid parameter not satisfying: %@", @"dataSourceSnapshot"}];

LABEL_5:
  v20 = [sectionsCopy count];
  if (v20 != [snapshotCopy numberOfSections])
  {
    _UIDiffableDataSourceValidateIdentifiers(sectionsCopy, 0);
    currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler5 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceState.m" lineNumber:158 description:{@"Section identifier count does not match data source count. This is most likely caused by section identifiers improperly implementing hashing: identifiers that compare as equal must return the same hash value, and the hash value of an identifier should never change once added to diffable."}];
  }

  v21 = [identifiersCopy count];
  if (v21 != [snapshotCopy numberOfItems])
  {
    _UIDiffableDataSourceValidateIdentifiers(identifiersCopy, 1);
    currentHandler6 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler6 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceState.m" lineNumber:162 description:{@"Item identifier count does not match data source count. This is most likely caused by item identifiers improperly implementing hashing: identifiers that compare as equal must return the same hash value, and the hash value of an identifier should never change once added to diffable."}];
  }

  v37.receiver = self;
  v37.super_class = _UIDiffableDataSourceState;
  v22 = [(_UIDiffableDataSourceState *)&v37 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_generationID, d);
    v24 = [identifiersCopy copy];
    identifiers = v23->_identifiers;
    v23->_identifiers = v24;

    v26 = [sectionsCopy copy];
    sections = v23->_sections;
    v23->_sections = v26;

    v28 = [_UIDataSourceSnapshotter snapshotterForSnapshot:snapshotCopy];
    dataSourceSnapshot = v23->_dataSourceSnapshot;
    v23->_dataSourceSnapshot = v28;

    if (performance || [(NSOrderedSet *)v23->_identifiers count]< 0xB || CVCIs__NSOrderedSetI(v23->_identifiers))
    {
      objc_storeStrong(&v23->_guaranteedPerformanceIdentifiers, v23->_identifiers);
    }

    if (guaranteedPerformance || [(NSOrderedSet *)v23->_sections count]< 0xB || CVCIs__NSOrderedSetI(v23->_sections))
    {
      objc_storeStrong(&v23->_guaranteedPerformanceSections, v23->_sections);
    }
  }

  return v23;
}

- (void)validateIdentifiers
{
  _UIDiffableDataSourceValidateIdentifiers(self->_sections, 0);
  identifiers = self->_identifiers;

  _UIDiffableDataSourceValidateIdentifiers(identifiers, 1);
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"[%@ - %p: dataSourceSnapshot: %@ generationID: %@", v5, self, self->_dataSourceSnapshot, self->_generationID];;

  return v6;
}

- (int64_t)numberOfItemsInSection:(id)section
{
  v5 = [(_UIDiffableDataSourceState *)self indexOfSectionIdentifier:section];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceState.m" lineNumber:273 description:@"Section identifier was not found. You can verify the section exists by calling the indexOfSectionIdentifier API (which has O(1) performance)"];
  }

  dataSourceSnapshot = self->_dataSourceSnapshot;

  return [(_UICollectionDataSourceSnapshotTranslating *)dataSourceSnapshot numberOfItemsInSection:v5];
}

- (id)itemIdentifiersInSectionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceState.m" lineNumber:278 description:{@"Invalid parameter not satisfying: %@", @"sectionIdentifier"}];
  }

  v6 = [(_UIDiffableDataSourceState *)self indexOfSectionIdentifier:identifierCopy];
  if ((dyld_program_sdk_at_least() & 1) == 0 && v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_9;
  }

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceState.m" lineNumber:286 description:@"Section identifier was not found. You can verify the section exists by calling the indexOfSectionIdentifier API (which has O(1) performance)"];
  }

  v7 = [(_UICollectionDataSourceSnapshotTranslating *)self->_dataSourceSnapshot rangeForSection:v6];
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    array = [(NSOrderedSet *)self->_identifiers array];
    v12 = [array subarrayWithRange:{v9, v10}];
  }

  else
  {
LABEL_9:
    v12 = MEMORY[0x277CBEBF8];
  }

  return v12;
}

- (id)sectionIdentifierForSectionContainingItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceState.m" lineNumber:297 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v6 = [(_UIDiffableDataSourceState *)self indexOfItemIdentifier:identifierCopy];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL || (v7 = [(_UICollectionDataSourceSnapshotTranslating *)self->_dataSourceSnapshot sectionForGlobalIndex:v6], v7 == 0x7FFFFFFFFFFFFFFFLL) || (v8 = v7, v7 >= [(_UICollectionDataSourceSnapshotTranslating *)self->_dataSourceSnapshot numberOfSections]))
  {
    v9 = 0;
  }

  else
  {
    v9 = [(NSOrderedSet *)self->_sections objectAtIndexedSubscript:v8];
  }

  return v9;
}

- (id)sectionIndexesForItemIndexRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  numberOfItems = [(_UIDiffableDataSourceState *)self numberOfItems];
  if (numberOfItems && length && numberOfItems > location)
  {
    if (location + length <= numberOfItems)
    {
      v7 = length;
    }

    else
    {
      v7 = numberOfItems - location;
    }

    v8 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{location, v7}];
    firstIndex = [v8 firstIndex];
    lastIndex = [v8 lastIndex];
    v11 = [(_UICollectionDataSourceSnapshotTranslating *)self->_dataSourceSnapshot sectionForGlobalIndex:firstIndex];
    v12 = [(_UICollectionDataSourceSnapshotTranslating *)self->_dataSourceSnapshot sectionForGlobalIndex:lastIndex];
    indexSet = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{v11, v12 - v11 + 1}];
  }

  else
  {
    indexSet = [MEMORY[0x277CCAA78] indexSet];
  }

  return indexSet;
}

- (int64_t)indexOfItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    identifierLookupCount = self->_identifierLookupCount;
    if (identifierLookupCount >= 0xA)
    {
      if (!self->_guaranteedPerformanceIdentifiers)
      {
        v7 = [objc_alloc(MEMORY[0x277CBEB70]) initWithOrderedSet:self->_identifiers];
        guaranteedPerformanceIdentifiers = self->_guaranteedPerformanceIdentifiers;
        self->_guaranteedPerformanceIdentifiers = v7;
      }
    }

    else
    {
      self->_identifierLookupCount = identifierLookupCount + 1;
    }

    identifiers = self->_guaranteedPerformanceIdentifiers;
    if (!identifiers)
    {
      identifiers = self->_identifiers;
    }

    v6 = [(NSOrderedSet *)identifiers indexOfObject:identifierCopy];
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

- (int64_t)indexOfSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    sectionLookupCount = self->_sectionLookupCount;
    if (sectionLookupCount >= 0xA)
    {
      if (!self->_guaranteedPerformanceSections)
      {
        v7 = [objc_alloc(MEMORY[0x277CBEB70]) initWithOrderedSet:self->_sections];
        guaranteedPerformanceSections = self->_guaranteedPerformanceSections;
        self->_guaranteedPerformanceSections = v7;
      }
    }

    else
    {
      self->_sectionLookupCount = sectionLookupCount + 1;
    }

    sections = self->_guaranteedPerformanceSections;
    if (!sections)
    {
      sections = self->_sections;
    }

    v6 = [(NSOrderedSet *)sections indexOfObject:identifierCopy];
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

- (id)sectionIdentifierForIndex:(int64_t)index
{
  if (index > 0x7FFFFFFFFFFFFFFELL)
  {
    v6 = 0;
  }

  else
  {
    if ([(_UICollectionDataSourceSnapshotTranslating *)self->_dataSourceSnapshot numberOfSections]<= index)
    {
      v6 = 0;
    }

    else
    {
      v6 = [(NSOrderedSet *)self->_sections objectAtIndexedSubscript:index];
    }
  }

  return v6;
}

- (id)itemIdentifierForIndexPath:(id)path
{
  v4 = [(_UICollectionDataSourceSnapshotTranslating *)self->_dataSourceSnapshot globalIndexForIndexPath:path];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSOrderedSet *)self->_identifiers objectAtIndexedSubscript:v4];
  }

  return v5;
}

- (id)indexPathForItemIdentifier:(id)identifier
{
  v4 = [(_UIDiffableDataSourceState *)self indexOfItemIdentifier:identifier];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(_UICollectionDataSourceSnapshotTranslating *)self->_dataSourceSnapshot indexPathForGlobalIndex:v4];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 initWithState:self];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v14 = 0;
  }

  else
  {
    v5 = equalCopy;
    generationID = self->_generationID;
    generationID = [(_UIDiffableDataSourceState *)v5 generationID];
    LODWORD(generationID) = [(NSUUID *)generationID isEqual:generationID];

    if (generationID && (sections = self->_sections, [(_UIDiffableDataSourceState *)v5 sections], v9 = objc_claimAutoreleasedReturnValue(), LODWORD(sections) = [(NSOrderedSet *)sections isEqualToOrderedSet:v9], v9, sections) && (identifiers = self->_identifiers, [(_UIDiffableDataSourceState *)v5 identifiers], v11 = objc_claimAutoreleasedReturnValue(), LODWORD(identifiers) = [(NSOrderedSet *)identifiers isEqualToOrderedSet:v11], v11, identifiers))
    {
      dataSourceSnapshot = self->_dataSourceSnapshot;
      dataSourceSnapshot = [(_UIDiffableDataSourceState *)v5 dataSourceSnapshot];
      v14 = [(_UICollectionDataSourceSnapshotTranslating *)dataSourceSnapshot isEqual:dataSourceSnapshot];
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

@end