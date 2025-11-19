@interface _UIDiffableDataSourceState
- (BOOL)isEqual:(id)a3;
- (NSOrderedSet)identifiers;
- (NSOrderedSet)sections;
- (NSString)description;
- (_UIDiffableDataSourceState)init;
- (_UIDiffableDataSourceState)initWithGenerationID:(id)a3 identifiers:(id)a4 sections:(id)a5 dataSourceSnapshot:(id)a6 identifiersHaveGuaranteedPerformance:(BOOL)a7 sectionsHaveGuaranteedPerformance:(BOOL)a8;
- (_UIDiffableDataSourceState)initWithState:(id)a3;
- (_UIDiffableDataSourceState)initWithStateAdvancingGenerationID:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)indexPathForItemIdentifier:(id)a3;
- (id)itemIdentifierForIndexPath:(id)a3;
- (id)itemIdentifiersInSectionWithIdentifier:(id)a3;
- (id)sectionIdentifierForIndex:(int64_t)a3;
- (id)sectionIdentifierForSectionContainingItemIdentifier:(id)a3;
- (id)sectionIndexesForItemIndexRange:(_NSRange)a3;
- (int64_t)indexOfItemIdentifier:(id)a3;
- (int64_t)indexOfSectionIdentifier:(id)a3;
- (int64_t)numberOfItemsInSection:(id)a3;
- (void)ensureOrderedSetsHaveGuaranteedPerformance;
- (void)validateIdentifiers;
@end

@implementation _UIDiffableDataSourceState

- (_UIDiffableDataSourceState)init
{
  v3 = [MEMORY[0x277CCAD78] UUID];
  v4 = objc_alloc_init(MEMORY[0x277CBEB70]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB70]);
  v6 = objc_alloc_init(_UIDataSourceSnapshotter);
  v7 = [(_UIDiffableDataSourceState *)self initWithGenerationID:v3 identifiers:v4 sections:v5 dataSourceSnapshot:v6 identifiersHaveGuaranteedPerformance:1 sectionsHaveGuaranteedPerformance:1];

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

- (_UIDiffableDataSourceState)initWithState:(id)a3
{
  v4 = a3;
  HaveGuaranteedPerformanceBeforeCopyingState = _ensureOrderedSetsHaveGuaranteedPerformanceBeforeCopyingState(v4);
  v6 = [v4 generationID];
  v7 = [v4 identifiers];
  v8 = [v4 sections];
  v9 = [v4 dataSourceSnapshot];
  v10 = [(_UIDiffableDataSourceState *)self initWithGenerationID:v6 identifiers:v7 sections:v8 dataSourceSnapshot:v9];

  if (HaveGuaranteedPerformanceBeforeCopyingState && v10)
  {
    v11 = [v4 guaranteedPerformanceIdentifiers];
    guaranteedPerformanceIdentifiers = v10->_guaranteedPerformanceIdentifiers;
    v10->_guaranteedPerformanceIdentifiers = v11;

    v13 = [v4 guaranteedPerformanceSections];
    guaranteedPerformanceSections = v10->_guaranteedPerformanceSections;
    v10->_guaranteedPerformanceSections = v13;
  }

  return v10;
}

- (_UIDiffableDataSourceState)initWithStateAdvancingGenerationID:(id)a3
{
  v4 = a3;
  HaveGuaranteedPerformanceBeforeCopyingState = _ensureOrderedSetsHaveGuaranteedPerformanceBeforeCopyingState(v4);
  v6 = [MEMORY[0x277CCAD78] UUID];
  v7 = [v4 identifiers];
  v8 = [v4 sections];
  v9 = [v4 dataSourceSnapshot];
  v10 = [(_UIDiffableDataSourceState *)self initWithGenerationID:v6 identifiers:v7 sections:v8 dataSourceSnapshot:v9];

  if (HaveGuaranteedPerformanceBeforeCopyingState && v10)
  {
    v11 = [v4 guaranteedPerformanceIdentifiers];
    guaranteedPerformanceIdentifiers = v10->_guaranteedPerformanceIdentifiers;
    v10->_guaranteedPerformanceIdentifiers = v11;

    v13 = [v4 guaranteedPerformanceSections];
    guaranteedPerformanceSections = v10->_guaranteedPerformanceSections;
    v10->_guaranteedPerformanceSections = v13;
  }

  return v10;
}

- (_UIDiffableDataSourceState)initWithGenerationID:(id)a3 identifiers:(id)a4 sections:(id)a5 dataSourceSnapshot:(id)a6 identifiersHaveGuaranteedPerformance:(BOOL)a7 sectionsHaveGuaranteedPerformance:(BOOL)a8
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  if (v16)
  {
    if (v17)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v31 = [MEMORY[0x277CCA890] currentHandler];
    [v31 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceState.m" lineNumber:142 description:{@"Invalid parameter not satisfying: %@", @"generationID"}];

    if (v17)
    {
LABEL_3:
      if (v18)
      {
        goto LABEL_4;
      }

LABEL_21:
      v33 = [MEMORY[0x277CCA890] currentHandler];
      [v33 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceState.m" lineNumber:144 description:{@"Invalid parameter not satisfying: %@", @"sections"}];

      if (v19)
      {
        goto LABEL_5;
      }

      goto LABEL_22;
    }
  }

  v32 = [MEMORY[0x277CCA890] currentHandler];
  [v32 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceState.m" lineNumber:143 description:{@"Invalid parameter not satisfying: %@", @"identifiers"}];

  if (!v18)
  {
    goto LABEL_21;
  }

LABEL_4:
  if (v19)
  {
    goto LABEL_5;
  }

LABEL_22:
  v34 = [MEMORY[0x277CCA890] currentHandler];
  [v34 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceState.m" lineNumber:145 description:{@"Invalid parameter not satisfying: %@", @"dataSourceSnapshot"}];

LABEL_5:
  v20 = [v18 count];
  if (v20 != [v19 numberOfSections])
  {
    _UIDiffableDataSourceValidateIdentifiers(v18, 0);
    v35 = [MEMORY[0x277CCA890] currentHandler];
    [v35 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceState.m" lineNumber:158 description:{@"Section identifier count does not match data source count. This is most likely caused by section identifiers improperly implementing hashing: identifiers that compare as equal must return the same hash value, and the hash value of an identifier should never change once added to diffable."}];
  }

  v21 = [v17 count];
  if (v21 != [v19 numberOfItems])
  {
    _UIDiffableDataSourceValidateIdentifiers(v17, 1);
    v36 = [MEMORY[0x277CCA890] currentHandler];
    [v36 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceState.m" lineNumber:162 description:{@"Item identifier count does not match data source count. This is most likely caused by item identifiers improperly implementing hashing: identifiers that compare as equal must return the same hash value, and the hash value of an identifier should never change once added to diffable."}];
  }

  v37.receiver = self;
  v37.super_class = _UIDiffableDataSourceState;
  v22 = [(_UIDiffableDataSourceState *)&v37 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_generationID, a3);
    v24 = [v17 copy];
    identifiers = v23->_identifiers;
    v23->_identifiers = v24;

    v26 = [v18 copy];
    sections = v23->_sections;
    v23->_sections = v26;

    v28 = [_UIDataSourceSnapshotter snapshotterForSnapshot:v19];
    dataSourceSnapshot = v23->_dataSourceSnapshot;
    v23->_dataSourceSnapshot = v28;

    if (a7 || [(NSOrderedSet *)v23->_identifiers count]< 0xB || CVCIs__NSOrderedSetI(v23->_identifiers))
    {
      objc_storeStrong(&v23->_guaranteedPerformanceIdentifiers, v23->_identifiers);
    }

    if (a8 || [(NSOrderedSet *)v23->_sections count]< 0xB || CVCIs__NSOrderedSetI(v23->_sections))
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

- (int64_t)numberOfItemsInSection:(id)a3
{
  v5 = [(_UIDiffableDataSourceState *)self indexOfSectionIdentifier:a3];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceState.m" lineNumber:273 description:@"Section identifier was not found. You can verify the section exists by calling the indexOfSectionIdentifier API (which has O(1) performance)"];
  }

  dataSourceSnapshot = self->_dataSourceSnapshot;

  return [(_UICollectionDataSourceSnapshotTranslating *)dataSourceSnapshot numberOfItemsInSection:v5];
}

- (id)itemIdentifiersInSectionWithIdentifier:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceState.m" lineNumber:278 description:{@"Invalid parameter not satisfying: %@", @"sectionIdentifier"}];
  }

  v6 = [(_UIDiffableDataSourceState *)self indexOfSectionIdentifier:v5];
  if ((dyld_program_sdk_at_least() & 1) == 0 && v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_9;
  }

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceState.m" lineNumber:286 description:@"Section identifier was not found. You can verify the section exists by calling the indexOfSectionIdentifier API (which has O(1) performance)"];
  }

  v7 = [(_UICollectionDataSourceSnapshotTranslating *)self->_dataSourceSnapshot rangeForSection:v6];
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    v11 = [(NSOrderedSet *)self->_identifiers array];
    v12 = [v11 subarrayWithRange:{v9, v10}];
  }

  else
  {
LABEL_9:
    v12 = MEMORY[0x277CBEBF8];
  }

  return v12;
}

- (id)sectionIdentifierForSectionContainingItemIdentifier:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceState.m" lineNumber:297 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v6 = [(_UIDiffableDataSourceState *)self indexOfItemIdentifier:v5];
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

- (id)sectionIndexesForItemIndexRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = [(_UIDiffableDataSourceState *)self numberOfItems];
  if (v6 && length && v6 > location)
  {
    if (location + length <= v6)
    {
      v7 = length;
    }

    else
    {
      v7 = v6 - location;
    }

    v8 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{location, v7}];
    v9 = [v8 firstIndex];
    v10 = [v8 lastIndex];
    v11 = [(_UICollectionDataSourceSnapshotTranslating *)self->_dataSourceSnapshot sectionForGlobalIndex:v9];
    v12 = [(_UICollectionDataSourceSnapshotTranslating *)self->_dataSourceSnapshot sectionForGlobalIndex:v10];
    v13 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{v11, v12 - v11 + 1}];
  }

  else
  {
    v13 = [MEMORY[0x277CCAA78] indexSet];
  }

  return v13;
}

- (int64_t)indexOfItemIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
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

    v6 = [(NSOrderedSet *)identifiers indexOfObject:v4];
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

- (int64_t)indexOfSectionIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
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

    v6 = [(NSOrderedSet *)sections indexOfObject:v4];
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

- (id)sectionIdentifierForIndex:(int64_t)a3
{
  if (a3 > 0x7FFFFFFFFFFFFFFELL)
  {
    v6 = 0;
  }

  else
  {
    if ([(_UICollectionDataSourceSnapshotTranslating *)self->_dataSourceSnapshot numberOfSections]<= a3)
    {
      v6 = 0;
    }

    else
    {
      v6 = [(NSOrderedSet *)self->_sections objectAtIndexedSubscript:a3];
    }
  }

  return v6;
}

- (id)itemIdentifierForIndexPath:(id)a3
{
  v4 = [(_UICollectionDataSourceSnapshotTranslating *)self->_dataSourceSnapshot globalIndexForIndexPath:a3];
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

- (id)indexPathForItemIdentifier:(id)a3
{
  v4 = [(_UIDiffableDataSourceState *)self indexOfItemIdentifier:a3];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];

  return [v4 initWithState:self];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v14 = 0;
  }

  else
  {
    v5 = v4;
    generationID = self->_generationID;
    v7 = [(_UIDiffableDataSourceState *)v5 generationID];
    LODWORD(generationID) = [(NSUUID *)generationID isEqual:v7];

    if (generationID && (sections = self->_sections, [(_UIDiffableDataSourceState *)v5 sections], v9 = objc_claimAutoreleasedReturnValue(), LODWORD(sections) = [(NSOrderedSet *)sections isEqualToOrderedSet:v9], v9, sections) && (identifiers = self->_identifiers, [(_UIDiffableDataSourceState *)v5 identifiers], v11 = objc_claimAutoreleasedReturnValue(), LODWORD(identifiers) = [(NSOrderedSet *)identifiers isEqualToOrderedSet:v11], v11, identifiers))
    {
      dataSourceSnapshot = self->_dataSourceSnapshot;
      v13 = [(_UIDiffableDataSourceState *)v5 dataSourceSnapshot];
      v14 = [(_UICollectionDataSourceSnapshotTranslating *)dataSourceSnapshot isEqual:v13];
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

@end