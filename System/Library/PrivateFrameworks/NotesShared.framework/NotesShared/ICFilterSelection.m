@interface ICFilterSelection
+ (id)keyPathsForValuesAffectingHasEmptySelection;
+ (id)keyPathsForValuesAffectingIsEmpty;
+ (id)keyPathsForValuesAffectingIsValid;
- (BOOL)hasEmptySelection;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToICFilterSelection:(id)a3;
- (BOOL)isValid;
- (ICFilterSelection)initWithFilterTypeSelection:(id)a3;
- (ICFilterSelection)initWithFilterTypeSelections:(id)a3 joinOperator:(unint64_t)a4;
- (NSArray)emptyFilterTypeSelections;
- (NSArray)incompatibleLockedNotesFilterTypeSelections;
- (NSArray)invalidFilterTypeSelectionCombinations;
- (NSString)emptySummary;
- (NSString)emptySummaryTitle;
- (NSString)invalidSummary;
- (NSString)invalidSummaryTitle;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)filterTypeSelectionForFilterType:(int64_t)a3;
- (unint64_t)hash;
- (void)setSelection:(id)a3 forFilterType:(int64_t)a4;
@end

@implementation ICFilterSelection

- (ICFilterSelection)initWithFilterTypeSelections:(id)a3 joinOperator:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = ICFilterSelection;
  v8 = [(ICFilterSelection *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_includeRecentlyDeleted = 0;
    objc_storeStrong(&v8->_filterTypeSelections, a3);
    v9->_joinOperator = a4;
  }

  return v9;
}

- (ICFilterSelection)initWithFilterTypeSelection:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v4 = MEMORY[0x277CBEA60];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v9 count:1];

  v7 = [(ICFilterSelection *)self initWithFilterTypeSelections:v6 joinOperator:0, v9, v10];
  return v7;
}

- (id)filterTypeSelectionForFilterType:(int64_t)a3
{
  v4 = [(ICFilterSelection *)self filterTypeSelections];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__ICFilterSelection_filterTypeSelectionForFilterType___block_invoke;
  v7[3] = &__block_descriptor_40_e38_B32__0__ICFilterTypeSelection_8Q16_B24l;
  v7[4] = a3;
  v5 = [v4 ic_objectPassingTest:v7];

  return v5;
}

- (void)setSelection:(id)a3 forFilterType:(int64_t)a4
{
  v6 = a3;
  v7 = [(ICFilterSelection *)self filterTypeSelections];
  v8 = [v7 mutableCopy];

  v9 = [(ICFilterSelection *)self filterTypeSelections];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __48__ICFilterSelection_setSelection_forFilterType___block_invoke;
  v12[3] = &__block_descriptor_40_e38_B32__0__ICFilterTypeSelection_8Q16_B24l;
  v12[4] = a4;
  v10 = [v9 indexOfObjectPassingTest:v12];

  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v8 removeObjectAtIndex:v10];
  }

  [v8 ic_addNonNilObject:v6];
  v11 = [v8 copy];
  [(ICFilterSelection *)self setFilterTypeSelections:v11];
}

+ (id)keyPathsForValuesAffectingIsEmpty
{
  v2 = MEMORY[0x277CBEB98];
  v3 = NSStringFromSelector(sel_filterTypeSelections);
  v4 = [v2 setWithObjects:{v3, 0}];

  return v4;
}

- (BOOL)isEmpty
{
  v2 = [(ICFilterSelection *)self filterTypeSelections];
  v3 = [v2 count] == 0;

  return v3;
}

+ (id)keyPathsForValuesAffectingIsValid
{
  v2 = MEMORY[0x277CBEB98];
  v3 = NSStringFromSelector(sel_filterTypeSelections);
  v4 = [v2 setWithObjects:{v3, 0}];

  return v4;
}

- (BOOL)isValid
{
  v3 = [(ICFilterSelection *)self incompatibleLockedNotesFilterTypeSelections];
  if ([v3 count])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v5 = [(ICFilterSelection *)self invalidFilterTypeSelectionCombinations];
    if ([v5 count] || -[ICFilterSelection hasEmptySelection](self, "hasEmptySelection"))
    {
      LOBYTE(v4) = 0;
    }

    else
    {
      v7 = [(ICFilterSelection *)self filterTypeSelections];
      v4 = [v7 ic_containsObjectPassingTest:&__block_literal_global_69] ^ 1;
    }
  }

  return v4;
}

- (NSString)invalidSummaryTitle
{
  v3 = [(ICFilterSelection *)self incompatibleLockedNotesFilterTypeSelections];
  v4 = [v3 count];

  if (v4)
  {
    v5 = @"About the Locked Notes Filter";
LABEL_5:
    v8 = __ICLocalizedFrameworkString_impl(v5, v5, 0, 1);
    goto LABEL_6;
  }

  v6 = [(ICFilterSelection *)self invalidFilterTypeSelectionCombinations];
  v7 = [v6 count];

  if (v7)
  {
    v5 = @"Conflicting Filter Settings";
    goto LABEL_5;
  }

  if ([(ICFilterSelection *)self hasEmptySelection])
  {
    v8 = [(ICFilterSelection *)self emptySummaryTitle];
  }

  else
  {
    v8 = 0;
  }

LABEL_6:

  return v8;
}

- (NSString)invalidSummary
{
  v3 = [(ICFilterSelection *)self incompatibleLockedNotesFilterTypeSelections];
  if ([v3 count])
  {
    v4 = NSStringFromSelector(sel_filterName);
    v5 = [v3 valueForKey:v4];

    if ([v3 count] == 1)
    {
      v6 = [v3 firstObject];
      v7 = [v6 filterType];

      v8 = 0;
      if (v7 > 4)
      {
        if (v7 <= 7)
        {
          if (v7 == 5)
          {
            v9 = @"Since the content of a locked note is encrypted, combining the Locked Notes filter with the Checklists filter will not return any results.";
          }

          else if (v7 == 6)
          {
            v9 = @"Since the content of a locked note is encrypted, combining the Locked Notes filter with the Attachments filter will not return any results.";
          }

          else
          {
            v9 = @"Since the content of a locked note is encrypted, combining the Locked Notes filter with the Folders filter will not return any results.";
          }

          goto LABEL_28;
        }

        if ((v7 - 9) >= 2)
        {
          if (v7 == 8)
          {
            v9 = @"Since the content of a locked note is encrypted, combining the Locked Notes filter with the Quick Notes filter will not return any results.";
            goto LABEL_28;
          }

          goto LABEL_33;
        }
      }

      else if (v7 <= 0)
      {
        if (v7 != -1)
        {
          if (!v7)
          {
            v9 = @"Since the content of a locked note is encrypted, combining the Locked Notes filter with the Tags filter will not return any results.";
            goto LABEL_28;
          }

LABEL_33:

          goto LABEL_34;
        }
      }

      else if ((v7 - 1) >= 2)
      {
        if (v7 == 3)
        {
          v9 = @"Since the content of a locked note is encrypted, combining the Locked Notes filter with the Shared filter will not return any results.";
          goto LABEL_28;
        }

        if (v7 == 4)
        {
          v9 = @"Since the content of a locked note is encrypted, combining the Locked Notes filter with the Mentions filter will not return any results.";
LABEL_28:
          v8 = __ICLocalizedFrameworkString_impl(v9, v9, 0, 1);
          goto LABEL_29;
        }

        goto LABEL_33;
      }
    }

    else
    {
      v13 = MEMORY[0x277CCACA8];
      v14 = __ICLocalizedFrameworkString_impl(@"Since the content of a locked note is encrypted, combining the Locked Notes filter with the following filters will not return any results:\n\n%@", @"Since the content of a locked note is encrypted, combining the Locked Notes filter with the following filters will not return any results:\n\n%@", 0, 1);
      v15 = [v5 componentsJoinedByString:@"\n"];
      v8 = [v13 localizedStringWithFormat:v14, v15];
    }

LABEL_29:

    goto LABEL_30;
  }

  v10 = [(ICFilterSelection *)self invalidFilterTypeSelectionCombinations];
  v11 = [v10 count];

  if (v11)
  {
    v12 = __ICLocalizedFrameworkString_impl(@"Your selected filters have conflicting settings and will not return any results.", @"Your selected filters have conflicting settings and will not return any results.", 0, 1);
LABEL_18:
    v8 = v12;
    goto LABEL_30;
  }

  if ([(ICFilterSelection *)self hasEmptySelection])
  {
    v12 = [(ICFilterSelection *)self emptySummary];
    goto LABEL_18;
  }

LABEL_34:
  v8 = 0;
LABEL_30:

  return v8;
}

- (BOOL)hasEmptySelection
{
  v2 = [(ICFilterSelection *)self emptyFilterTypeSelections];
  v3 = [v2 count] != 0;

  return v3;
}

+ (id)keyPathsForValuesAffectingHasEmptySelection
{
  v2 = MEMORY[0x277CBEB98];
  v3 = NSStringFromSelector(sel_filterTypeSelections);
  v4 = [v2 setWithObjects:{v3, 0}];

  return v4;
}

- (NSString)emptySummaryTitle
{
  v2 = [(ICFilterSelection *)self emptyFilterTypeSelections];
  if ([v2 count])
  {
    if ([v2 count] == 1)
    {
      v3 = [v2 firstObject];
      v4 = [v3 emptySummaryTitle];
    }

    else
    {
      v4 = __ICLocalizedFrameworkString_impl(@"Multiple Filters Incomplete", @"Multiple Filters Incomplete", 0, 1);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)emptySummary
{
  v3 = [(ICFilterSelection *)self emptyFilterTypeSelections];
  if ([v3 count])
  {
    if ([v3 count] == 1)
    {
      v4 = [v3 firstObject];
      v5 = [v4 emptySummary];
    }

    else
    {
      v6 = [(ICFilterSelection *)self emptyFilterTypeSelections];
      v4 = [v6 ic_compactMap:&__block_literal_global_64_0];

      v7 = [v4 componentsJoinedByString:@"\n"];
      v8 = MEMORY[0x277CCACA8];
      v9 = __ICLocalizedFrameworkString_impl(@"You must select at least one: \n\n %@", @"You must select at least one: \n\n %@", 0, 1);
      v5 = [v8 localizedStringWithFormat:v9, v7];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)debugDescription
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v4 = NSStringFromICFilterSelectionJoinOperator([(ICFilterSelection *)self joinOperator]);
  v5 = [v3 stringWithFormat:@"operator:%@", v4];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(ICFilterSelection *)self filterTypeSelections];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      v11 = v5;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [*(*(&v14 + 1) + 8 * v10) debugDescription];
        v5 = [v11 stringByAppendingFormat:@"\n%@", v12];

        ++v10;
        v11 = v5;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [(ICFilterSelection *)self filterTypeSelections];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __34__ICFilterSelection_copyWithZone___block_invoke;
  v9[3] = &__block_descriptor_40_e54___ICFilterTypeSelection_16__0__ICFilterTypeSelection_8l;
  v9[4] = a3;
  v6 = [v5 ic_compactMap:v9];

  v7 = [[ICFilterSelection allocWithZone:?]joinOperator:"initWithFilterTypeSelections:joinOperator:", v6, [(ICFilterSelection *)self joinOperator]];
  return v7;
}

id __34__ICFilterSelection_copyWithZone___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 copyWithZone:*(a1 + 32)];

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ICFilterSelection *)self isEqualToICFilterSelection:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ICFilterSelection joinOperator](self, "joinOperator")}];
  v4 = [v3 hash];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICFilterSelection includeRecentlyDeleted](self, "includeRecentlyDeleted")}];
  v6 = [v5 hash];
  v7 = [(ICFilterSelection *)self filterTypeSelections];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v9 hash];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = v7;
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v10 = ICHashWithObject(*(*(&v25 + 1) + 8 * i)) - v10 + 32 * v10;
      }

      v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v13);
  }

  v23 = ICHashWithHashKeys(v4, v16, v17, v18, v19, v20, v21, v22, v6);
  return v23;
}

- (BOOL)isEqualToICFilterSelection:(id)a3
{
  v4 = a3;
  v5 = [(ICFilterSelection *)self joinOperator];
  if (v5 == [v4 joinOperator] && (v6 = -[ICFilterSelection includeRecentlyDeleted](self, "includeRecentlyDeleted"), v6 == objc_msgSend(v4, "includeRecentlyDeleted")))
  {
    v8 = [(ICFilterSelection *)self filterTypeSelections];
    v9 = [v4 filterTypeSelections];
    v7 = [v8 isEqualToArray:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSArray)emptyFilterTypeSelections
{
  v2 = [(ICFilterSelection *)self filterTypeSelections];
  v3 = [v2 ic_objectsPassingTest:&__block_literal_global_82];

  return v3;
}

- (NSArray)invalidFilterTypeSelectionCombinations
{
  v23[2] = *MEMORY[0x277D85DE8];
  if ([(ICFilterSelection *)self joinOperator])
  {
    v3 = MEMORY[0x277CBEBF8];
    goto LABEL_22;
  }

  objc_opt_class();
  v4 = [(ICFilterSelection *)self filterTypeSelectionForFilterType:3];
  v5 = ICDynamicCast();

  if (v5 && [v5 selectionType] == 3)
  {
    objc_opt_class();
    v6 = [(ICFilterSelection *)self filterTypeSelectionForFilterType:7];
    v7 = ICDynamicCast();

    objc_opt_class();
    v8 = [(ICFilterSelection *)self filterTypeSelectionForFilterType:4];
    v9 = ICDynamicCast();

    if (v7 && ![v7 inclusionType] && objc_msgSend(v7, "containsSharedFolder"))
    {
      v23[0] = v5;
      v10 = v23;
      v11 = v7;
LABEL_26:
      v10[1] = v11;
      v3 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];

      goto LABEL_21;
    }

    if (v9 && [v9 selectionType] != 3)
    {
      v22 = v5;
      v10 = &v22;
      v11 = v9;
      goto LABEL_26;
    }
  }

  objc_opt_class();
  v12 = [(ICFilterSelection *)self filterTypeSelectionForFilterType:1];
  v7 = ICDynamicCast();

  if (!v7)
  {
    goto LABEL_20;
  }

  if ([v7 selectionType] != 8)
  {
    goto LABEL_20;
  }

  v13 = [(ICFilterSelection *)self filterTypeSelections];
  v14 = [v13 count];

  if (v14 < 2)
  {
    goto LABEL_20;
  }

  objc_opt_class();
  v15 = [(ICFilterSelection *)self filterTypeSelectionForFilterType:2];
  v16 = ICDynamicCast();

  if (!v16 || [v7 selectionType] != 8 || (objc_msgSend(v16, "primaryDate"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "primaryDate"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v17, "ic_isEarlierThanDate:", v18), v18, v17, (v19 & 1) == 0))
  {

LABEL_20:
    v3 = MEMORY[0x277CBEBF8];
    goto LABEL_21;
  }

  v21[0] = v7;
  v21[1] = v16;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];

LABEL_21:
LABEL_22:

  return v3;
}

- (NSArray)incompatibleLockedNotesFilterTypeSelections
{
  v3 = [MEMORY[0x277CBEB18] array];
  objc_opt_class();
  v4 = [(ICFilterSelection *)self filterTypeSelectionForFilterType:10];
  v5 = ICDynamicCast();

  if (v5)
  {
    if (![v5 inclusionType])
    {
      v6 = [(ICFilterSelection *)self filterTypeSelections];
      v7 = [v6 count];

      if (v7 >= 2)
      {
        objc_opt_class();
        v8 = [(ICFilterSelection *)self filterTypeSelectionForFilterType:0];
        v9 = ICDynamicCast();

        if (v9 && [v9 mode] != 2)
        {
          [v3 addObject:v9];
        }

        objc_opt_class();
        v10 = [(ICFilterSelection *)self filterTypeSelectionForFilterType:3];
        v11 = ICDynamicCast();

        if (v11 && [v11 selectionType] != 3)
        {
          [v3 addObject:v11];
        }

        objc_opt_class();
        v12 = [(ICFilterSelection *)self filterTypeSelectionForFilterType:4];
        v13 = ICDynamicCast();

        if (v13 && [v13 selectionType] != 3)
        {
          [v3 addObject:v13];
        }

        objc_opt_class();
        v14 = [(ICFilterSelection *)self filterTypeSelectionForFilterType:8];
        v15 = ICDynamicCast();

        if (v15 && ![v15 inclusionType])
        {
          [v3 addObject:v15];
        }

        v25 = v11;
        objc_opt_class();
        v16 = [(ICFilterSelection *)self filterTypeSelectionForFilterType:7];
        v17 = ICDynamicCast();

        if (v17 && ![v17 inclusionType] && objc_msgSend(v17, "containsSharedFolder"))
        {
          [v3 addObject:v17];
        }

        v18 = v9;
        objc_opt_class();
        v19 = [(ICFilterSelection *)self filterTypeSelectionForFilterType:5];
        v20 = ICDynamicCast();

        if (v20 && [v20 selectionType] != 3)
        {
          [v3 addObject:v20];
        }

        objc_opt_class();
        v21 = [(ICFilterSelection *)self filterTypeSelectionForFilterType:6];
        v22 = ICDynamicCast();

        if (v22 && [v22 selectionType] != 9)
        {
          [v3 addObject:v22];
        }
      }
    }
  }

  v23 = [v3 copy];

  return v23;
}

@end