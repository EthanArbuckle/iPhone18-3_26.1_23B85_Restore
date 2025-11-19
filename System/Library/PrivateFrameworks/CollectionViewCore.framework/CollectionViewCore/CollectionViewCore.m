void _CVCDiffableDataSourceInitializeWithUpdateItemClass(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___CVCDiffableDataSourceInitializeWithUpdateItemClass_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
  block[4] = a1;
  if (_CVCDiffableDataSourceInitializeWithUpdateItemClass_onceToken != -1)
  {
    dispatch_once(&_CVCDiffableDataSourceInitializeWithUpdateItemClass_onceToken, block);
  }
}

void std::vector<_NSRange>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 4;
    v7 = v6 + 1;
    if ((v6 + 1) >> 60)
    {
      std::vector<_NSRange>::__throw_length_error[abi:nn200100]();
    }

    v8 = v3 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<_NSRange>>(v9);
    }

    v10 = (16 * v6);
    *v10 = *a2;
    v5 = 16 * v6 + 16;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void *std::vector<_NSRange>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<_NSRange>>(a2);
    }

    std::vector<_NSRange>::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void _UIDataSourceSnapshotterCommonInit(void *a1, void *a2, void *a3)
{
  v15 = a1;
  v5 = a2;
  v6 = a3;
  if (v5 | v6)
  {
    if (v5)
    {
      v7 = [v5 _dataSourceNumberOfSections];
      goto LABEL_6;
    }
  }

  else
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void _UIDataSourceSnapshotterCommonInit(_UIDataSourceSnapshotter *__strong, __strong id<_UICollectionDataSourceBackedView>, __strong _UIDataSourceSnapshotterSectionCountsProvider)"}];
    [v8 handleFailureInFunction:v9 file:@"_UIDataSourceSnapshotter.mm" lineNumber:94 description:{@"Invalid parameter not satisfying: %@", @"dataSourceBackedView != nil || sectionCountsProvider != nil"}];
  }

  v7 = (*(v6 + 2))(v6, -1);
LABEL_6:
  v10 = v7;
  if (v7 >= 1)
  {
    std::vector<_NSRange>::reserve(v15 + 1, v7);
    v11 = 0;
    v12 = 0;
    do
    {
      if (v5)
      {
        v13 = [v5 _dataSourceNumberOfItemsInSection:v11];
      }

      else
      {
        v13 = (*(v6 + 2))(v6, v11);
      }

      v14 = v13;
      *&v16 = v12;
      *(&v16 + 1) = v13;
      std::vector<_NSRange>::push_back[abi:nn200100]((v15 + 1), &v16);
      v12 += v14;
      ++v11;
    }

    while (v10 != v11);
  }
}

void sub_243B9C318(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<_NSRange>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::vector<_NSRange>::__throw_length_error[abi:nn200100]();
}

uint64_t _ensureOrderedSetsHaveGuaranteedPerformanceBeforeCopyingState(void *a1)
{
  v1 = a1;
  v2 = objc_opt_respondsToSelector();
  if (v2)
  {
    [v1 ensureOrderedSetsHaveGuaranteedPerformance];
  }

  return v2 & 1;
}

id _UIDiffableDataSourceApplyInsertUpdate(void *a1, void *a2, void *a3, void *a4, int a5)
{
  v141 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v104 = v10;
  v105 = v9;
  v102 = v11;
  v106 = v12;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSArray<id<_CVCCollectionUpdateItem>> * _Nonnull _UIDiffableDataSourceApplyInsertUpdate(_UIDiffableDataSourceUpdate *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, _UIDataSourceSnapshotter *__strong _Nonnull, BOOL)"}];
    [v18 handleFailureInFunction:v19 file:@"_UIDiffableDataSourceUpdate.m" lineNumber:191 description:{@"Invalid parameter not satisfying: %@", @"update"}];

    v9 = 0;
    v11 = v102;
    if (v10)
    {
LABEL_3:
      if (v11)
      {
        goto LABEL_4;
      }

LABEL_14:
      v22 = [MEMORY[0x277CCA890] currentHandler];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSArray<id<_CVCCollectionUpdateItem>> * _Nonnull _UIDiffableDataSourceApplyInsertUpdate(_UIDiffableDataSourceUpdate *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, _UIDataSourceSnapshotter *__strong _Nonnull, BOOL)"}];
      [v22 handleFailureInFunction:v23 file:@"_UIDiffableDataSourceUpdate.m" lineNumber:193 description:{@"Invalid parameter not satisfying: %@", @"itemIdentifiers"}];

      v9 = v105;
      v11 = v102;
      if (v12)
      {
        goto LABEL_5;
      }

      goto LABEL_15;
    }
  }

  v20 = [MEMORY[0x277CCA890] currentHandler];
  v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSArray<id<_CVCCollectionUpdateItem>> * _Nonnull _UIDiffableDataSourceApplyInsertUpdate(_UIDiffableDataSourceUpdate *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, _UIDataSourceSnapshotter *__strong _Nonnull, BOOL)"}];
  [v20 handleFailureInFunction:v21 file:@"_UIDiffableDataSourceUpdate.m" lineNumber:192 description:{@"Invalid parameter not satisfying: %@", @"sectionIdentifiers"}];

  v9 = v105;
  v11 = v102;
  if (!v102)
  {
    goto LABEL_14;
  }

LABEL_4:
  if (v12)
  {
    goto LABEL_5;
  }

LABEL_15:
  v24 = [MEMORY[0x277CCA890] currentHandler];
  v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSArray<id<_CVCCollectionUpdateItem>> * _Nonnull _UIDiffableDataSourceApplyInsertUpdate(_UIDiffableDataSourceUpdate *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, _UIDataSourceSnapshotter *__strong _Nonnull, BOOL)"}];
  [v24 handleFailureInFunction:v25 file:@"_UIDiffableDataSourceUpdate.m" lineNumber:194 description:{@"Invalid parameter not satisfying: %@", @"dataSourceSnapshot"}];

  v9 = v105;
  v11 = v102;
LABEL_5:
  v13 = [v12 numberOfItems];
  if (v13 != [v11 count])
  {
    v26 = [MEMORY[0x277CCA890] currentHandler];
    v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSArray<id<_CVCCollectionUpdateItem>> * _Nonnull _UIDiffableDataSourceApplyInsertUpdate(_UIDiffableDataSourceUpdate *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, _UIDataSourceSnapshotter *__strong _Nonnull, BOOL)"}];
    [v26 handleFailureInFunction:v27 file:@"_UIDiffableDataSourceUpdate.m" lineNumber:195 description:{@"Invalid parameter not satisfying: %@", @"dataSourceSnapshot.numberOfItems == itemIdentifiers.count"}];

    v9 = v105;
    v11 = v102;
  }

  v14 = [v12 numberOfSections];
  if (v14 != [v10 count])
  {
    v28 = [MEMORY[0x277CCA890] currentHandler];
    v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSArray<id<_CVCCollectionUpdateItem>> * _Nonnull _UIDiffableDataSourceApplyInsertUpdate(_UIDiffableDataSourceUpdate *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, _UIDataSourceSnapshotter *__strong _Nonnull, BOOL)"}];
    [v28 handleFailureInFunction:v29 file:@"_UIDiffableDataSourceUpdate.m" lineNumber:196 description:{@"Invalid parameter not satisfying: %@", @"dataSourceSnapshot.numberOfSections == sectionIdentifiers.count"}];

    v9 = v105;
    v11 = v102;
  }

  if ([v9 action])
  {
    v30 = [MEMORY[0x277CCA890] currentHandler];
    v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSArray<id<_CVCCollectionUpdateItem>> * _Nonnull _UIDiffableDataSourceApplyInsertUpdate(_UIDiffableDataSourceUpdate *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, _UIDataSourceSnapshotter *__strong _Nonnull, BOOL)"}];
    [v30 handleFailureInFunction:v31 file:@"_UIDiffableDataSourceUpdate.m" lineNumber:197 description:{@"Invalid parameter not satisfying: %@", @"update.action == _CVCCollectionUpdateActionInsert"}];

    v9 = v105;
    v11 = v102;
    if (a5)
    {
      goto LABEL_11;
    }
  }

  else if (a5)
  {
LABEL_11:
    v15 = objc_alloc(MEMORY[0x277CBEB18]);
    v16 = [v9 identifiers];
    v17 = [v15 initWithCapacity:{objc_msgSend(v16, "count")}];

    v108 = v17;
    v103 = v17;
    v9 = v105;
    v11 = v102;
    goto LABEL_18;
  }

  v108 = 0;
  v103 = MEMORY[0x277CBEBF8];
LABEL_18:
  if ([v9 isSectionOperation])
  {
    v32 = [v9 destinationIdentifier];
    v33 = v104;
    if (v32)
    {
      v34 = [v104 indexOfObject:v32];
    }

    else
    {
      v34 = [v104 count];
    }

    v64 = v34;
    if (v34 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v80 = [MEMORY[0x277CCA890] currentHandler];
      v81 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSArray<id<_CVCCollectionUpdateItem>> * _Nonnull _UIDiffableDataSourceApplyInsertUpdate(_UIDiffableDataSourceUpdate *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, _UIDataSourceSnapshotter *__strong _Nonnull, BOOL)"}];
      [v80 handleFailureInFunction:v81 file:@"_UIDiffableDataSourceUpdate.m" lineNumber:206 description:{@"Invalid parameter not satisfying: %@", @"insertIndex != NSNotFound"}];

      v33 = v104;
    }

    if ([v105 relativePosition] == 1 && v64 < objc_msgSend(v33, "count"))
    {
      ++v64;
    }

    v65 = [v105 identifiers];
    v66 = [v65 count];

    v67 = v12;
    if (v66 >= 1)
    {
      v68 = v64;
      do
      {
        [v67 _insertSection:v68 withInitialCount:0];
        if (a5)
        {
          v69 = [MEMORY[0x277CCAA70] indexPathForItem:0x7FFFFFFFFFFFFFFFLL inSection:v68];
          _CVCUpdateItemAlloc();
          v70 = [objc_claimAutoreleasedReturnValue() initWithInitialIndexPath:0 finalIndexPath:v69 updateAction:0];
          [v108 addObject:v70];

          v67 = v12;
        }

        ++v68;
        --v66;
      }

      while (v66);
    }

    v71 = [v104 copy];
    v72 = [v104 count];
    v73 = [v105 identifiers];
    _UIDiffableDataSourceInsertIdentifiersAtIndex(v104, v73, v64, 0);

    v74 = [v104 count];
    v75 = [v105 identifiers];
    v76 = v74 - v72;
    v77 = [v75 count];

    if (v76 != v77)
    {
      v82 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v134 = 0u;
      v135 = 0u;
      v136 = 0u;
      v137 = 0u;
      v83 = [v105 identifiers];
      v84 = [v83 countByEnumeratingWithState:&v134 objects:v140 count:16];
      if (v84)
      {
        v85 = *v135;
        do
        {
          for (i = 0; i != v84; ++i)
          {
            if (*v135 != v85)
            {
              objc_enumerationMutation(v83);
            }

            v87 = *(*(&v134 + 1) + 8 * i);
            if ([v71 containsObject:v87])
            {
              [v82 addObject:v87];
            }
          }

          v84 = [v83 countByEnumeratingWithState:&v134 objects:v140 count:16];
        }

        while (v84);
      }

      if ([v82 count])
      {
        BUG_IN_CLIENT_OF_DIFFABLE_DATA_SOURCE__IDENTIFIER_ALREADY_EXISTS(v82, 0);
      }

      _UIDiffableDataSourceValidateIdentifiers(v104, 0);
      v88 = [v105 identifiers];
      _UIDiffableDataSourceValidateIdentifiers(v88, 0);
    }
  }

  else
  {
    v128 = 0;
    v129 = &v128;
    v130 = 0x3032000000;
    v131 = __Block_byref_object_copy__0;
    v132 = __Block_byref_object_dispose__0;
    v133 = 0;
    v124[0] = MEMORY[0x277D85DD0];
    v124[1] = 3221225472;
    v124[2] = ___UIDiffableDataSourceApplyInsertUpdate_block_invoke;
    v124[3] = &unk_278DE5868;
    v127 = &v128;
    v35 = v11;
    v125 = v35;
    v36 = v9;
    v126 = v36;
    v37 = MEMORY[0x245D4B4A0](v124);
    v117[0] = MEMORY[0x277D85DD0];
    v117[1] = 3221225472;
    v117[2] = ___UIDiffableDataSourceApplyInsertUpdate_block_invoke_2;
    v117[3] = &unk_278DE5890;
    v38 = v36;
    v118 = v38;
    v96 = v104;
    v119 = v96;
    v39 = v37;
    v122 = v39;
    v107 = v12;
    v120 = v107;
    v40 = v35;
    v121 = v40;
    v123 = &v128;
    v101 = MEMORY[0x245D4B4A0](v117);
    v41 = [v40 copy];
    v100 = [v107 copy];
    v42 = v101[2]();
    v43 = [v38 identifiers];
    LOBYTE(v37) = v42 == [v43 count];

    if ((v37 & 1) == 0)
    {
      v44 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v94 = v40;
      v115 = 0u;
      v116 = 0u;
      v113 = 0u;
      v114 = 0u;
      v45 = [v38 identifiers];
      v46 = [v45 countByEnumeratingWithState:&v113 objects:v139 count:16];
      if (v46)
      {
        v47 = *v114;
        do
        {
          for (j = 0; j != v46; ++j)
          {
            if (*v114 != v47)
            {
              objc_enumerationMutation(v45);
            }

            v49 = *(*(&v113 + 1) + 8 * j);
            if ([v41 containsObject:v49])
            {
              [v44 addObject:v49];
            }
          }

          v46 = [v45 countByEnumeratingWithState:&v113 objects:v139 count:16];
        }

        while (v46);
      }

      v40 = v94;
      if ([v44 count])
      {
        BUG_IN_CLIENT_OF_DIFFABLE_DATA_SOURCE__IDENTIFIER_ALREADY_EXISTS(v44, 1);
      }

      [v94 removeAllObjects];
      _UIDiffableDataSourceInsertIdentifiersAtIndex(v94, v41, 0, 1);
      v50 = v129[5];
      v129[5] = 0;

      [v107 _resetToStateOfSnapshotter:v100];
      v51 = [[_UIDiffableDataSourceUpdate alloc] initWithItemIdentifiers:v44 action:1];
      v52 = _UIDiffableDataSourceApplyDeleteUpdate(v51, v96, v94, v107, a5);
      if (a5)
      {
        [v108 addObjectsFromArray:v52];
      }

      v42 = v101[2]();
    }

    v53 = [v38 identifiers];
    v54 = v42 == [v53 count];

    if (!v54)
    {
      _UIDiffableDataSourceValidateIdentifiers(v40, 1);
      v89 = [v38 identifiers];
      _UIDiffableDataSourceValidateIdentifiers(v89, 1);

      v90 = [MEMORY[0x277CCA890] currentHandler];
      v99 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSArray<id<_CVCCollectionUpdateItem>> * _Nonnull _UIDiffableDataSourceApplyInsertUpdate(_UIDiffableDataSourceUpdate *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, _UIDataSourceSnapshotter *__strong _Nonnull, BOOL)"}];
      v91 = [v38 identifiers];
      v95 = [v91 count];
      v92 = [v38 identifiers];
      v93 = [v92 mutableCopy];

      [v93 minusOrderedSet:v40];
      [v90 handleFailureInFunction:v99 file:@"_UIDiffableDataSourceUpdate.m" lineNumber:378 description:{@"Diffable data source internal inconsistency: attempted to insert %ld identifiers but only %ld inserted. Identifiers that failed to insert: %@", v95, v42, v93}];
    }

    if (a5)
    {
      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
      v55 = [v38 identifiers];
      v56 = [v55 countByEnumeratingWithState:&v109 objects:v138 count:16];
      if (v56)
      {
        v57 = *v110;
        do
        {
          for (k = 0; k != v56; ++k)
          {
            if (*v110 != v57)
            {
              objc_enumerationMutation(v55);
            }

            v59 = (*(v39 + 2))(v39, *(*(&v109 + 1) + 8 * k));
            if (v59 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v97 = [MEMORY[0x277CCA890] currentHandler];
              v62 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSArray<id<_CVCCollectionUpdateItem>> * _Nonnull _UIDiffableDataSourceApplyInsertUpdate(_UIDiffableDataSourceUpdate *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, _UIDataSourceSnapshotter *__strong _Nonnull, BOOL)"}];
              [v97 handleFailureInFunction:v62 file:@"_UIDiffableDataSourceUpdate.m" lineNumber:385 description:{@"Invalid parameter not satisfying: %@", @"index != NSNotFound"}];
            }

            v60 = [v107 indexPathForGlobalIndex:v59];
            if (!v60)
            {
              v98 = [MEMORY[0x277CCA890] currentHandler];
              v63 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSArray<id<_CVCCollectionUpdateItem>> * _Nonnull _UIDiffableDataSourceApplyInsertUpdate(_UIDiffableDataSourceUpdate *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, _UIDataSourceSnapshotter *__strong _Nonnull, BOOL)"}];
              [v98 handleFailureInFunction:v63 file:@"_UIDiffableDataSourceUpdate.m" lineNumber:387 description:{@"Invalid parameter not satisfying: %@", @"indexPath"}];
            }

            _CVCUpdateItemAlloc();
            v61 = [objc_claimAutoreleasedReturnValue() initWithInitialIndexPath:0 finalIndexPath:v60 updateAction:0];
            [v108 addObject:v61];
          }

          v56 = [v55 countByEnumeratingWithState:&v109 objects:v138 count:16];
        }

        while (v56);
      }
    }

    _Block_object_dispose(&v128, 8);
  }

  v78 = v103;

  return v103;
}

void *std::vector<_NSRange>::__assign_with_size[abi:nn200100]<_NSRange*,_NSRange*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      if (!(v10 >> 60))
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<_NSRange>>(v10);
      }
    }

    std::vector<_NSRange>::__throw_length_error[abi:nn200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 4)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void _UIDiffableDataSourceInsertIdentifiersAtIndex(void *a1, void *a2, unint64_t a3, int a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  if ([v7 count] < a3)
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void _UIDiffableDataSourceInsertIdentifiersAtIndex(NSMutableOrderedSet *__strong _Nonnull, NSOrderedSet *__strong _Nonnull, NSUInteger, BOOL)"}];
    [v18 handleFailureInFunction:v19 file:@"_UIDiffableDataSourceState.m" lineNumber:109 description:{@"Invalid parameter not satisfying: %@", @"insertionIndex <= identifiers.count"}];
  }

  v9 = [v7 count];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = a3 - v9;
    v14 = *v21;
    do
    {
      v15 = 0;
      do
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v20 + 1) + 8 * v15);
        if (([v10 containsObject:v16] & 1) == 0)
        {
          if ([v16 isEqual:v16])
          {
            BUG_IN_CLIENT_OF_DIFFABLE_DATA_SOURCE__IDENTIFIER_HASH_VALUE_CHANGED(v16, a4);
          }

          else
          {
            BUG_IN_CLIENT_OF_DIFFABLE_DATA_SOURCE__IDENTIFIER_IS_NOT_EQUAL_TO_ITSELF(v16, a4);
          }
        }

        [v7 insertObject:v16 atIndex:{v13 + objc_msgSend(v7, "count")}];
        ++v15;
      }

      while (v12 != v15);
      v17 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      v12 = v17;
    }

    while (v17);
  }
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t CVCIs__NSOrderedSetI(void *a1)
{
  v1 = a1;
  if (_MergedGlobals_0 != -1)
  {
    dispatch_once(&_MergedGlobals_0, &__block_literal_global_0);
  }

  if (qword_280AE5058)
  {
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

id _compLayoutLog()
{
  if (qword_280AE5048 != -1)
  {
    dispatch_once(&qword_280AE5048, &__block_literal_global);
  }

  v1 = _MergedGlobals_22;

  return v1;
}

uint64_t ___compLayoutLog_block_invoke()
{
  _MergedGlobals_22 = os_log_create("com.apple.UIKit", "CompositionalLayout");

  return MEMORY[0x2821F96F8]();
}

void _CVCDirectionalInsetsForInsetsAlongAxis(uint64_t a1)
{
  if ((a1 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CVCDirectionalEdgeInsets _CVCDirectionalInsetsForInsetsAlongAxis(CVCDirectionalEdgeInsets, CVCAxis)"}];
    [v1 handleFailureInFunction:v2 file:@"CollectionViewCoreGeometry.m" lineNumber:25 description:@"Unknown axis provided."];
  }
}

double _CVCRectAnchorPointForUnitAnchorPoint(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  MinX = CGRectGetMinX(*&a1);
  v13.origin.x = a1;
  v13.origin.y = a2;
  v13.size.width = a3;
  v13.size.height = a4;
  v11 = MinX + a5 * CGRectGetWidth(v13);
  v14.origin.x = a1;
  v14.origin.y = a2;
  v14.size.width = a3;
  v14.size.height = a4;
  CGRectGetMinY(v14);
  v15.origin.x = a1;
  v15.origin.y = a2;
  v15.size.width = a3;
  v15.size.height = a4;
  CGRectGetHeight(v15);
  return v11;
}

CGFloat _CVCRectAdjustWithAnchorPoint(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v9 = (a5 + -0.5) * CGRectGetWidth(*&a1);
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  CGRectGetHeight(v11);
  v12.origin.x = a1;
  v12.origin.y = a2;
  v12.size.width = a3;
  v12.size.height = a4;
  CGRectGetWidth(v12);
  v13.origin.x = a1;
  v13.origin.y = a2;
  v13.size.width = a3;
  v13.size.height = a4;
  CGRectGetHeight(v13);
  return a1 - v9;
}

void sub_243B9F1E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_243B9F53C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double _CVCTotalEdgeDimensionsForLayoutAxis(uint64_t a1, double a2, double a3, double a4, double a5)
{
  if (a1 == 1)
  {
    return a3 + a5;
  }

  if (a1 == 2)
  {
    return a2 + a4;
  }

  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGFloat _CVCTotalEdgeDimensionsForLayoutAxis(CVCDirectionalEdgeInsets, CVCAxis)"}];
  [v6 handleFailureInFunction:v7 file:@"CollectionViewCoreGeometry.m" lineNumber:19 description:@"Unknown axis."];

  return 0.0;
}

id _UIDiffableDataSourceApplyDeleteUpdate(void *a1, void *a2, void *a3, void *a4, int a5)
{
  v110 = *MEMORY[0x277D85DE8];
  v8 = a1;
  v9 = a2;
  v10 = a3;
  v75 = a4;
  v69 = v9;
  v70 = v8;
  v71 = v10;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_57:
    v53 = [MEMORY[0x277CCA890] currentHandler];
    v54 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSArray<id<_CVCCollectionUpdateItem>> * _Nonnull _UIDiffableDataSourceApplyDeleteUpdate(_UIDiffableDataSourceUpdate *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, _UIDataSourceSnapshotter *__strong _Nonnull, BOOL)"}];
    [v53 handleFailureInFunction:v54 file:@"_UIDiffableDataSourceUpdate.m" lineNumber:404 description:{@"Invalid parameter not satisfying: %@", @"sectionIdentifiers"}];

    v8 = v70;
    v10 = v71;
    if (v71)
    {
      goto LABEL_4;
    }

    goto LABEL_58;
  }

  v51 = [MEMORY[0x277CCA890] currentHandler];
  v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSArray<id<_CVCCollectionUpdateItem>> * _Nonnull _UIDiffableDataSourceApplyDeleteUpdate(_UIDiffableDataSourceUpdate *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, _UIDataSourceSnapshotter *__strong _Nonnull, BOOL)"}];
  [v51 handleFailureInFunction:v52 file:@"_UIDiffableDataSourceUpdate.m" lineNumber:403 description:{@"Invalid parameter not satisfying: %@", @"update"}];

  v8 = 0;
  v10 = v71;
  if (!v9)
  {
    goto LABEL_57;
  }

LABEL_3:
  if (v10)
  {
    goto LABEL_4;
  }

LABEL_58:
  v55 = [MEMORY[0x277CCA890] currentHandler];
  v56 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSArray<id<_CVCCollectionUpdateItem>> * _Nonnull _UIDiffableDataSourceApplyDeleteUpdate(_UIDiffableDataSourceUpdate *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, _UIDataSourceSnapshotter *__strong _Nonnull, BOOL)"}];
  [v55 handleFailureInFunction:v56 file:@"_UIDiffableDataSourceUpdate.m" lineNumber:405 description:{@"Invalid parameter not satisfying: %@", @"itemIdentifiers"}];

  v8 = v70;
  v10 = v71;
LABEL_4:
  v11 = v75;
  if (!v75)
  {
    v57 = [MEMORY[0x277CCA890] currentHandler];
    v58 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSArray<id<_CVCCollectionUpdateItem>> * _Nonnull _UIDiffableDataSourceApplyDeleteUpdate(_UIDiffableDataSourceUpdate *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, _UIDataSourceSnapshotter *__strong _Nonnull, BOOL)"}];
    [v57 handleFailureInFunction:v58 file:@"_UIDiffableDataSourceUpdate.m" lineNumber:406 description:{@"Invalid parameter not satisfying: %@", @"dataSourceSnapshot"}];

    v8 = v70;
    v10 = v71;
    v11 = 0;
  }

  v12 = [v11 numberOfItems];
  if (v12 != [v10 count])
  {
    v59 = [MEMORY[0x277CCA890] currentHandler];
    v60 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSArray<id<_CVCCollectionUpdateItem>> * _Nonnull _UIDiffableDataSourceApplyDeleteUpdate(_UIDiffableDataSourceUpdate *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, _UIDataSourceSnapshotter *__strong _Nonnull, BOOL)"}];
    [v59 handleFailureInFunction:v60 file:@"_UIDiffableDataSourceUpdate.m" lineNumber:407 description:{@"Invalid parameter not satisfying: %@", @"dataSourceSnapshot.numberOfItems == itemIdentifiers.count"}];

    v8 = v70;
    v10 = v71;
    v11 = v75;
  }

  v13 = [v11 numberOfSections];
  if (v13 != [v9 count])
  {
    v61 = [MEMORY[0x277CCA890] currentHandler];
    v62 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSArray<id<_CVCCollectionUpdateItem>> * _Nonnull _UIDiffableDataSourceApplyDeleteUpdate(_UIDiffableDataSourceUpdate *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, _UIDataSourceSnapshotter *__strong _Nonnull, BOOL)"}];
    [v61 handleFailureInFunction:v62 file:@"_UIDiffableDataSourceUpdate.m" lineNumber:408 description:{@"Invalid parameter not satisfying: %@", @"dataSourceSnapshot.numberOfSections == sectionIdentifiers.count"}];

    v8 = v70;
    v10 = v71;
  }

  if ([v8 action] != 1)
  {
    v63 = [MEMORY[0x277CCA890] currentHandler];
    v64 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSArray<id<_CVCCollectionUpdateItem>> * _Nonnull _UIDiffableDataSourceApplyDeleteUpdate(_UIDiffableDataSourceUpdate *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, _UIDataSourceSnapshotter *__strong _Nonnull, BOOL)"}];
    [v63 handleFailureInFunction:v64 file:@"_UIDiffableDataSourceUpdate.m" lineNumber:409 description:{@"Invalid parameter not satisfying: %@", @"update.action == _CVCCollectionUpdateActionDelete"}];

    v8 = v70;
    v10 = v71;
  }

  if (a5)
  {
    v14 = objc_alloc(MEMORY[0x277CBEB18]);
    v15 = [v8 identifiers];
    v16 = [v14 initWithCapacity:{objc_msgSend(v15, "count")}];

    v8 = v70;
    if ([v70 isDeleteAll])
    {
      v17 = [v75 numberOfSections];
      if (v17 < 1)
      {
        v72 = v16;
      }

      else
      {
        v18 = v17;
        v19 = v16;
        for (i = 0; i != v18; ++i)
        {
          v21 = [MEMORY[0x277CCAA70] indexPathForItem:0x7FFFFFFFFFFFFFFFLL inSection:i];
          _CVCUpdateItemAlloc();
          v22 = [objc_claimAutoreleasedReturnValue() initWithAction:1 forIndexPath:v21];
          [v19 addObject:v22];
        }

        v16 = v19;
        v72 = v19;
      }

      v9 = v69;
      v10 = v71;
      goto LABEL_54;
    }

    v72 = v16;
    v10 = v71;
  }

  else
  {
    v23 = [v8 isDeleteAll];
    v16 = 0;
    v72 = MEMORY[0x277CBEBF8];
    if (v23)
    {
LABEL_54:
      [v9 removeAllObjects];
      [v10 removeAllObjects];
      [v75 _deleteAllSections];
      goto LABEL_55;
    }
  }

  v73 = v16;
  if ([v8 isSectionOperation])
  {
    v101 = 0;
    v102 = &v101;
    v103 = 0x3032000000;
    v104 = __Block_byref_object_copy__0;
    v105 = __Block_byref_object_dispose__0;
    v106 = 0;
    v97[0] = MEMORY[0x277D85DD0];
    v97[1] = 3221225472;
    v97[2] = ___UIDiffableDataSourceApplyDeleteUpdate_block_invoke;
    v97[3] = &unk_278DE5868;
    v100 = &v101;
    v24 = v9;
    v98 = v24;
    v25 = v8;
    v99 = v25;
    v26 = MEMORY[0x245D4B4A0](v97);
    v27 = objc_alloc_init(MEMORY[0x277CCAB58]);
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v28 = [v25 identifiers];
    v29 = [v28 countByEnumeratingWithState:&v93 objects:v109 count:16];
    if (v29)
    {
      v30 = *v94;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v94 != v30)
          {
            objc_enumerationMutation(v28);
          }

          v32 = v26[2](v26, *(*(&v93 + 1) + 8 * j));
          if (v32 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [v27 addIndex:v32];
          }
        }

        v29 = [v28 countByEnumeratingWithState:&v93 objects:v109 count:16];
      }

      while (v29);
    }

    [v24 removeObjectsAtIndexes:v27];
    v88[0] = MEMORY[0x277D85DD0];
    v88[1] = 3221225472;
    v88[2] = ___UIDiffableDataSourceApplyDeleteUpdate_block_invoke_2;
    v88[3] = &unk_278DE58B8;
    v89 = v75;
    v90 = v71;
    v92 = a5;
    v16 = v73;
    v91 = v16;
    [v27 enumerateIndexesWithOptions:2 usingBlock:v88];

    _Block_object_dispose(&v101, 8);
  }

  else
  {
    v101 = 0;
    v102 = &v101;
    v103 = 0x3032000000;
    v104 = __Block_byref_object_copy__0;
    v105 = __Block_byref_object_dispose__0;
    v106 = 0;
    v84[0] = MEMORY[0x277D85DD0];
    v84[1] = 3221225472;
    v84[2] = ___UIDiffableDataSourceApplyDeleteUpdate_block_invoke_3;
    v84[3] = &unk_278DE5868;
    v87 = &v101;
    v67 = v10;
    v85 = v67;
    v68 = v8;
    v86 = v68;
    v33 = MEMORY[0x245D4B4A0](v84);
    v34 = objc_alloc_init(MEMORY[0x277CCA940]);
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v35 = [v68 identifiers];
    v36 = [v35 countByEnumeratingWithState:&v80 objects:v108 count:16];
    if (v36)
    {
      v37 = *v81;
      do
      {
        for (k = 0; k != v36; ++k)
        {
          if (*v81 != v37)
          {
            objc_enumerationMutation(v35);
          }

          v39 = v33[2](v33, *(*(&v80 + 1) + 8 * k));
          if (v39 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v40 = [v75 sectionForGlobalIndex:v39];
            if (v40 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v66 = [MEMORY[0x277CCA890] currentHandler];
              v65 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSArray<id<_CVCCollectionUpdateItem>> * _Nonnull _UIDiffableDataSourceApplyDeleteUpdate(_UIDiffableDataSourceUpdate *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, _UIDataSourceSnapshotter *__strong _Nonnull, BOOL)"}];
              [v66 handleFailureInFunction:v65 file:@"_UIDiffableDataSourceUpdate.m" lineNumber:490 description:{@"Invalid parameter not satisfying: %@", @"section != NSNotFound"}];
            }

            v41 = [MEMORY[0x277CCABB0] numberWithInteger:v40];
            [v34 addObject:v41];

            if (a5)
            {
              v42 = [v75 indexPathForGlobalIndex:v39];
              _CVCUpdateItemAlloc();
              v43 = [objc_claimAutoreleasedReturnValue() initWithAction:1 forIndexPath:v42];
              [v73 addObject:v43];
            }
          }
        }

        v36 = [v35 countByEnumeratingWithState:&v80 objects:v108 count:16];
      }

      while (v36);
    }

    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v44 = v34;
    v45 = [v44 countByEnumeratingWithState:&v76 objects:v107 count:16];
    if (v45)
    {
      v46 = *v77;
      do
      {
        for (m = 0; m != v45; ++m)
        {
          if (*v77 != v46)
          {
            objc_enumerationMutation(v44);
          }

          [v75 _decrementSectionCount:objc_msgSend(*(*(&v76 + 1) + 8 * m) byCount:{"integerValue"), objc_msgSend(v44, "countForObject:", *(*(&v76 + 1) + 8 * m))}];
        }

        v45 = [v44 countByEnumeratingWithState:&v76 objects:v107 count:16];
      }

      while (v45);
    }

    v48 = [v68 identifiers];
    [v67 minusOrderedSet:v48];

    _Block_object_dispose(&v101, 8);
    v16 = v73;
  }

LABEL_55:
  v49 = v72;

  return v72;
}

id _CVCUpdateItemAlloc()
{
  v0 = CollectionUpdateItemClass;
  if (!CollectionUpdateItemClass)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"id<_CVCCollectionUpdateItem> _CVCUpdateItemAlloc(void)"];
    [v3 handleFailureInFunction:v4 file:@"_UIDiffableDataSourceUpdate.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"CollectionUpdateItemClass != nil"}];

    v0 = CollectionUpdateItemClass;
  }

  v1 = [v0 alloc];

  return v1;
}

uint64_t __objectEqual(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 | v4)
  {
    v6 = 0;
    if (v3 && v4)
    {
      v6 = [v3 isEqual:v4];
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

__CFString *_CVCContentInsetsReferenceDescription(uint64_t a1)
{
  if ((a1 - 1) >= 4)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown value: %ld)", a1];
  }

  else
  {
    v2 = off_278DE57F8[a1 - 1];
  }

  return v2;
}

void BUG_IN_CLIENT_OF_DIFFABLE_DATA_SOURCE__IDENTIFIER_HASH_VALUE_CHANGED(void *a1, int a2)
{
  v3 = a1;
  _CVCApplicationIsAppleApp();
  if (dyld_program_sdk_at_least())
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void BUG_IN_CLIENT_OF_DIFFABLE_DATA_SOURCE__IDENTIFIER_HASH_VALUE_CHANGED(__strong id _Nonnull, BOOL)"}];
    v6 = @"a section";
    if (a2)
    {
      v6 = @"an item";
    }

    [v4 handleFailureInFunction:v5 file:@"_UIDiffableDataSourceHelpers.m" lineNumber:70 description:{@"Diffable data source detected %@ identifier whose hash value changed. The hash value of an identifier cannot change once it has been added to a snapshot. You must fix this in the Hashable (Swift) or hash property (Objective-C) implementation for this identifier's type. When fixing your implementation, also remember that two identifiers which are equal must have the same hash value. Identifier returning invalid hash values: %@", v6, v3}];
  }

  else
  {
    if (a2)
    {
      v7 = @"an item";
    }

    else
    {
      v7 = @"a section";
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:{@"Diffable data source detected %@ identifier whose hash value changed. The hash value of an identifier cannot change once it has been added to a snapshot. You must fix this in the Hashable (Swift) or hash property (Objective-C) implementation for this identifier's type. When fixing your implementation, also remember that two identifiers which are equal must have the same hash value. Identifier returning invalid hash values: %@ Set a symbolic breakpoint on BUG_IN_CLIENT_OF_DIFFABLE_DATA_SOURCE__IDENTIFIER_HASH_VALUE_CHANGED to catch this in the debugger. This will become an assert in a future version.", v7, v3}];
  }
}

void BUG_IN_CLIENT_OF_DIFFABLE_DATA_SOURCE__IDENTIFIER_IS_NOT_EQUAL_TO_ITSELF(void *a1, int a2)
{
  v3 = a1;
  _CVCApplicationIsAppleApp();
  if (dyld_program_sdk_at_least())
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void BUG_IN_CLIENT_OF_DIFFABLE_DATA_SOURCE__IDENTIFIER_IS_NOT_EQUAL_TO_ITSELF(__strong id _Nonnull, BOOL)"}];
    v6 = @"a section";
    if (a2)
    {
      v6 = @"an item";
    }

    [v4 handleFailureInFunction:v5 file:@"_UIDiffableDataSourceHelpers.m" lineNumber:74 description:{@"Diffable data source detected %@ identifier that is not equal to itself. An identifier must compare as equal to the same identifier. You must fix this in the == function (Swift) or -isEqual: method (Objective-C) implementation for this identifier's type. Identifier with invalid equality: %@", v6, v3}];
  }

  else
  {
    if (a2)
    {
      v7 = @"an item";
    }

    else
    {
      v7 = @"a section";
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:{@"Diffable data source detected %@ identifier that is not equal to itself. An identifier must compare as equal to the same identifier. You must fix this in the == function (Swift) or -isEqual: method (Objective-C) implementation for this identifier's type. Identifier with invalid equality: %@ Set a symbolic breakpoint on BUG_IN_CLIENT_OF_DIFFABLE_DATA_SOURCE__IDENTIFIER_IS_NOT_EQUAL_TO_ITSELF to catch this in the debugger. This will become an assert in a future version.", v7, v3}];
  }
}

void BUG_IN_CLIENT_OF_DIFFABLE_DATA_SOURCE__EQUAL_IDENTIFIERS_HAVE_DIFFERENT_HASH_VALUES(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  _CVCApplicationIsAppleApp();
  if (dyld_program_sdk_at_least())
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void BUG_IN_CLIENT_OF_DIFFABLE_DATA_SOURCE__EQUAL_IDENTIFIERS_HAVE_DIFFERENT_HASH_VALUES(__strong id _Nonnull, __strong id _Nonnull, BOOL)"}];
    v9 = @"section";
    if (a3)
    {
      v9 = @"item";
    }

    [v7 handleFailureInFunction:v8 file:@"_UIDiffableDataSourceHelpers.m" lineNumber:78 description:{@"Diffable data source detected %@ identifiers that are equal but have different hash values. Two identifiers which compare as equal must return the same hash value. You must fix this in the Hashable (Swift) or hash property (Objective-C) implementation for the type of these identifiers. Identifiers that are equal but have different hash values: (%@) and (%@)", v9, v5, v6}];
  }

  else
  {
    if (a3)
    {
      v10 = @"item";
    }

    else
    {
      v10 = @"section";
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:{@"Diffable data source detected %@ identifiers that are equal but have different hash values. Two identifiers which compare as equal must return the same hash value. You must fix this in the Hashable (Swift) or hash property (Objective-C) implementation for the type of these identifiers. Identifiers that are equal but have different hash values: (%@) and (%@) Set a symbolic breakpoint on BUG_IN_CLIENT_OF_DIFFABLE_DATA_SOURCE__EQUAL_IDENTIFIERS_HAVE_DIFFERENT_HASH_VALUES to catch this in the debugger. This will become an assert in a future version.", v10, v5, v6}];
  }
}

void BUG_IN_CLIENT_OF_DIFFABLE_DATA_SOURCE__IDENTIFIERS_ARE_NOT_UNIQUE(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  _CVCApplicationIsAppleApp();
  if (dyld_program_sdk_at_least())
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void BUG_IN_CLIENT_OF_DIFFABLE_DATA_SOURCE__IDENTIFIERS_ARE_NOT_UNIQUE(__strong id _Nonnull, __strong id _Nonnull, BOOL)"}];
    v9 = @"section";
    if (a3)
    {
      v9 = @"item";
    }

    [v7 handleFailureInFunction:v8 file:@"_UIDiffableDataSourceHelpers.m" lineNumber:82 description:{@"Diffable data source detected %@ identifiers that are not unique. You cannot add multiple identifiers to the same snapshot that compare as equal. This probably also means you have an issue in the Hashable (Swift) or hash property (Objective-C) implementation for the type of these identifiers, that causes equal identifiers to return different hash values. Identifiers that are not unique: (%@) and (%@)", v9, v5, v6}];
  }

  else
  {
    if (a3)
    {
      v10 = @"item";
    }

    else
    {
      v10 = @"section";
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:{@"Diffable data source detected %@ identifiers that are not unique. You cannot add multiple identifiers to the same snapshot that compare as equal. This probably also means you have an issue in the Hashable (Swift) or hash property (Objective-C) implementation for the type of these identifiers, that causes equal identifiers to return different hash values. Identifiers that are not unique: (%@) and (%@) Set a symbolic breakpoint on BUG_IN_CLIENT_OF_DIFFABLE_DATA_SOURCE__IDENTIFIERS_ARE_NOT_UNIQUE to catch this in the debugger. This will become an assert in a future version.", v10, v5, v6}];
  }
}

void BUG_IN_CLIENT_OF_DIFFABLE_DATA_SOURCE__IDENTIFIER_ALREADY_EXISTS(void *a1, int a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [v3 count];
  if (a2)
  {
    if (qword_280AE5068 != -1)
    {
      dispatch_once(&qword_280AE5068, &__block_literal_global_62);
    }

    v5 = qword_280AE5060;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v11 = v3;
      if (v4 == 1)
      {
        v12 = @"identifier that already exists";
      }

      else
      {
        v12 = @"identifiers that already exist";
      }

      if (v4 == 1)
      {
        v13 = @"identifier";
      }

      else
      {
        v13 = @"identifiers";
      }

      if (v4 == 1)
      {
        v11 = [v3 firstObject];
      }

      *buf = 134219010;
      v15 = v4;
      v16 = 2112;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      v20 = 2112;
      v21 = v12;
      v22 = 2112;
      v23 = v11;
      _os_log_error_impl(&dword_243B9B000, v5, OS_LOG_TYPE_ERROR, "Diffable data source detected an attempt to insert or append %ld item %@ in the snapshot. The existing item %@ will be moved into place instead, but this operation will be more expensive. For best performance, inserted item identifiers should always be unique. Set a symbolic breakpoint on BUG_IN_CLIENT_OF_DIFFABLE_DATA_SOURCE__IDENTIFIER_ALREADY_EXISTS to catch this in the debugger. Item %@: %@", buf, 0x34u);
      if (v4 == 1)
      {
      }
    }

    goto LABEL_19;
  }

  _CVCApplicationIsAppleApp();
  if (dyld_program_sdk_at_least())
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void BUG_IN_CLIENT_OF_DIFFABLE_DATA_SOURCE__IDENTIFIER_ALREADY_EXISTS(NSArray *__strong _Nonnull, BOOL)"}];
    if (v4 == 1)
    {
      v8 = [v3 firstObject];
      [v6 handleFailureInFunction:v7 file:@"_UIDiffableDataSourceHelpers.m" lineNumber:99 description:{@"Diffable data source detected an attempt to insert or append %ld section %@ in the snapshot. Identifiers in a snapshot must be unique. Section %@: %@", 1, @"identifier that already exists", @"identifier that already exists", v8}];
    }

    else
    {
      [v6 handleFailureInFunction:v7 file:@"_UIDiffableDataSourceHelpers.m" lineNumber:99 description:{@"Diffable data source detected an attempt to insert or append %ld section %@ in the snapshot. Identifiers in a snapshot must be unique. Section %@: %@", v4, @"identifiers that already exist", @"identifiers that already exist", v3}];
    }

LABEL_18:
    goto LABEL_19;
  }

  v9 = MEMORY[0x277CBEAD8];
  v6 = v3;
  if (v4 == 1)
  {
    v10 = @"identifier that already exists";
  }

  else
  {
    v10 = @"identifiers that already exist";
  }

  if (v4 == 1)
  {
    v6 = [v3 firstObject];
  }

  [v9 raise:*MEMORY[0x277CBE648] format:{@"Diffable data source detected an attempt to insert or append %ld section %@ in the snapshot. Identifiers in a snapshot must be unique. Section %@: %@ Set a symbolic breakpoint on BUG_IN_CLIENT_OF_DIFFABLE_DATA_SOURCE__IDENTIFIER_ALREADY_EXISTS to catch this in the debugger. This will become an assert in a future version.", v4, v10, v10, v6}];
  if (v4 == 1)
  {
    goto LABEL_18;
  }

LABEL_19:
}

void _UIDiffableDataSourceValidateIdentifiers(void *a1, int a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [v2 count];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        if (([v10 isEqual:v10] & 1) == 0)
        {
          BUG_IN_CLIENT_OF_DIFFABLE_DATA_SOURCE__IDENTIFIER_IS_NOT_EQUAL_TO_ITSELF(v10, a2);
        }

        v11 = [v10 hash];
        if (v11 != [v10 hash])
        {
          BUG_IN_CLIENT_OF_DIFFABLE_DATA_SOURCE__IDENTIFIER_HASH_VALUE_CHANGED(v10, a2);
        }

        if (([v4 containsObject:v10] & 1) == 0)
        {
          if ([v10 isEqual:v10])
          {
            BUG_IN_CLIENT_OF_DIFFABLE_DATA_SOURCE__IDENTIFIER_HASH_VALUE_CHANGED(v10, a2);
          }

          else
          {
            BUG_IN_CLIENT_OF_DIFFABLE_DATA_SOURCE__IDENTIFIER_IS_NOT_EQUAL_TO_ITSELF(v10, a2);
          }
        }

        v12 = ++v7;
        if (v7 < v3)
        {
          do
          {
            v13 = [v4 objectAtIndexedSubscript:v12];
            if ([v10 isEqual:v13])
            {
              v14 = [v10 hash];
              if (v14 != [v13 hash])
              {
                BUG_IN_CLIENT_OF_DIFFABLE_DATA_SOURCE__EQUAL_IDENTIFIERS_HAVE_DIFFERENT_HASH_VALUES(v10, v13, a2);
              }

              BUG_IN_CLIENT_OF_DIFFABLE_DATA_SOURCE__IDENTIFIERS_ARE_NOT_UNIQUE(v10, v13, a2);
            }

            ++v12;
          }

          while (v12 < v3);
        }

        ++v9;
      }

      while (v9 != v6);
      v15 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
      v6 = v15;
    }

    while (v15);
  }
}

void _UIDiffableDataSourceValidateIdentifiersForDiff(void *a1, void *a2, int a3)
{
  v29 = *MEMORY[0x277D85DE8];
  obj = a1;
  v18 = a2;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v9 = v18;
        v10 = [v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v20;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v20 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v19 + 1) + 8 * j);
              if ([v8 isEqual:v14])
              {
                v15 = [v8 hash];
                if (v15 != [v14 hash])
                {
                  BUG_IN_CLIENT_OF_DIFFABLE_DATA_SOURCE__EQUAL_IDENTIFIERS_HAVE_DIFFERENT_HASH_VALUES(v8, v14, a3);
                }
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v11);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v5);
  }

  _UIDiffableDataSourceValidateIdentifiers(obj, a3);
  _UIDiffableDataSourceValidateIdentifiers(v18, a3);
}

uint64_t ___diffableLog_block_invoke()
{
  qword_280AE5060 = os_log_create("com.apple.UIKit", "DiffableDataSource");

  return MEMORY[0x2821F96F8]();
}

void *_UIDiffableDataSourceApplyMoveUpdate(void *a1, void *a2, void *a3, void *a4, int a5)
{
  v92[1] = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v52 = [MEMORY[0x277CCA890] currentHandler];
    v53 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSArray<id<_CVCCollectionUpdateItem>> * _Nonnull _UIDiffableDataSourceApplyMoveUpdate(_UIDiffableDataSourceUpdate *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, _UIDataSourceSnapshotter *__strong _Nonnull, BOOL)"}];
    [v52 handleFailureInFunction:v53 file:@"_UIDiffableDataSourceUpdate.m" lineNumber:518 description:{@"Invalid parameter not satisfying: %@", @"update"}];

    if (v10)
    {
LABEL_3:
      if (v11)
      {
        goto LABEL_4;
      }

LABEL_75:
      v56 = [MEMORY[0x277CCA890] currentHandler];
      v57 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSArray<id<_CVCCollectionUpdateItem>> * _Nonnull _UIDiffableDataSourceApplyMoveUpdate(_UIDiffableDataSourceUpdate *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, _UIDataSourceSnapshotter *__strong _Nonnull, BOOL)"}];
      [v56 handleFailureInFunction:v57 file:@"_UIDiffableDataSourceUpdate.m" lineNumber:520 description:{@"Invalid parameter not satisfying: %@", @"itemIdentifiers"}];

      if (v12)
      {
        goto LABEL_5;
      }

      goto LABEL_76;
    }
  }

  v54 = [MEMORY[0x277CCA890] currentHandler];
  v55 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSArray<id<_CVCCollectionUpdateItem>> * _Nonnull _UIDiffableDataSourceApplyMoveUpdate(_UIDiffableDataSourceUpdate *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, _UIDataSourceSnapshotter *__strong _Nonnull, BOOL)"}];
  [v54 handleFailureInFunction:v55 file:@"_UIDiffableDataSourceUpdate.m" lineNumber:519 description:{@"Invalid parameter not satisfying: %@", @"sectionIdentifiers"}];

  if (!v11)
  {
    goto LABEL_75;
  }

LABEL_4:
  if (v12)
  {
    goto LABEL_5;
  }

LABEL_76:
  v58 = [MEMORY[0x277CCA890] currentHandler];
  v59 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSArray<id<_CVCCollectionUpdateItem>> * _Nonnull _UIDiffableDataSourceApplyMoveUpdate(_UIDiffableDataSourceUpdate *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, _UIDataSourceSnapshotter *__strong _Nonnull, BOOL)"}];
  [v58 handleFailureInFunction:v59 file:@"_UIDiffableDataSourceUpdate.m" lineNumber:521 description:{@"Invalid parameter not satisfying: %@", @"dataSourceSnapshot"}];

LABEL_5:
  v13 = [v12 numberOfItems];
  if (v13 != [v11 count])
  {
    v60 = [MEMORY[0x277CCA890] currentHandler];
    v61 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSArray<id<_CVCCollectionUpdateItem>> * _Nonnull _UIDiffableDataSourceApplyMoveUpdate(_UIDiffableDataSourceUpdate *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, _UIDataSourceSnapshotter *__strong _Nonnull, BOOL)"}];
    [v60 handleFailureInFunction:v61 file:@"_UIDiffableDataSourceUpdate.m" lineNumber:522 description:{@"Invalid parameter not satisfying: %@", @"dataSourceSnapshot.numberOfItems == itemIdentifiers.count"}];
  }

  v14 = [v12 numberOfSections];
  if (v14 != [v10 count])
  {
    v62 = [MEMORY[0x277CCA890] currentHandler];
    v63 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSArray<id<_CVCCollectionUpdateItem>> * _Nonnull _UIDiffableDataSourceApplyMoveUpdate(_UIDiffableDataSourceUpdate *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, _UIDataSourceSnapshotter *__strong _Nonnull, BOOL)"}];
    [v62 handleFailureInFunction:v63 file:@"_UIDiffableDataSourceUpdate.m" lineNumber:523 description:{@"Invalid parameter not satisfying: %@", @"dataSourceSnapshot.numberOfSections == sectionIdentifiers.count"}];
  }

  if ([v9 action] != 3)
  {
    v64 = [MEMORY[0x277CCA890] currentHandler];
    v65 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSArray<id<_CVCCollectionUpdateItem>> * _Nonnull _UIDiffableDataSourceApplyMoveUpdate(_UIDiffableDataSourceUpdate *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, _UIDataSourceSnapshotter *__strong _Nonnull, BOOL)"}];
    [v64 handleFailureInFunction:v65 file:@"_UIDiffableDataSourceUpdate.m" lineNumber:524 description:{@"Invalid parameter not satisfying: %@", @"update.action == _CVCCollectionUpdateActionMove"}];
  }

  v15 = [v9 identifiers];
  v16 = [v15 firstObject];

  v17 = [v9 destinationIdentifier];
  v18 = v17;
  if (v16)
  {
    if (v17)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v66 = [MEMORY[0x277CCA890] currentHandler];
    v67 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSArray<id<_CVCCollectionUpdateItem>> * _Nonnull _UIDiffableDataSourceApplyMoveUpdate(_UIDiffableDataSourceUpdate *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, _UIDataSourceSnapshotter *__strong _Nonnull, BOOL)"}];
    [v66 handleFailureInFunction:v67 file:@"_UIDiffableDataSourceUpdate.m" lineNumber:528 description:{@"Invalid parameter not satisfying: %@", @"fromIdentifier"}];

    if (v18)
    {
      goto LABEL_13;
    }
  }

  v68 = [MEMORY[0x277CCA890] currentHandler];
  v69 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSArray<id<_CVCCollectionUpdateItem>> * _Nonnull _UIDiffableDataSourceApplyMoveUpdate(_UIDiffableDataSourceUpdate *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, _UIDataSourceSnapshotter *__strong _Nonnull, BOOL)"}];
  [v68 handleFailureInFunction:v69 file:@"_UIDiffableDataSourceUpdate.m" lineNumber:529 description:{@"Invalid parameter not satisfying: %@", @"toIdentifier"}];

LABEL_13:
  v19 = MEMORY[0x277CBEBF8];
  v90 = a5;
  if (!a5)
  {
    v19 = 0;
  }

  v20 = v19;
  v88 = v10;
  v89 = v11;
  if ([v9 isSectionOperation])
  {
    v21 = [v10 indexOfObject:v16];
    v22 = [v10 indexOfObject:v18];
    if (v21 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v70 = [MEMORY[0x277CCA890] currentHandler];
      v71 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSArray<id<_CVCCollectionUpdateItem>> * _Nonnull _UIDiffableDataSourceApplyMoveUpdate(_UIDiffableDataSourceUpdate *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, _UIDataSourceSnapshotter *__strong _Nonnull, BOOL)"}];
      [v70 handleFailureInFunction:v71 file:@"_UIDiffableDataSourceUpdate.m" lineNumber:560 description:{@"Invalid parameter not satisfying: %@", @"fromSection != NSNotFound"}];
    }

    if (v22 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v72 = [MEMORY[0x277CCA890] currentHandler];
      v73 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSArray<id<_CVCCollectionUpdateItem>> * _Nonnull _UIDiffableDataSourceApplyMoveUpdate(_UIDiffableDataSourceUpdate *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, _UIDataSourceSnapshotter *__strong _Nonnull, BOOL)"}];
      [v72 handleFailureInFunction:v73 file:@"_UIDiffableDataSourceUpdate.m" lineNumber:561 description:{@"Invalid parameter not satisfying: %@", @"toSection != NSNotFound"}];
    }

    v23 = [v9 relativePosition];
    if (v21 >= v22)
    {
      v24 = v21 > v22 && v23 == 1;
    }

    else if (v23)
    {
      v24 = 0;
    }

    else
    {
      v24 = -1;
    }

    v32 = v24 + v22;
    if (v24 + v22 != v21)
    {
      v33 = [MEMORY[0x277CCAA78] indexSetWithIndex:v21];
      [v88 moveObjectsAtIndexes:v33 toIndex:v32];
      v34 = [v12 rangeForSection:v21];
      v36 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{v34, v35}];
      v37 = [v12 rangeForSection:v22];
      v39 = v38;
      if ([v9 relativePosition] == 1)
      {
        v40 = v39;
      }

      else
      {
        v40 = 0;
      }

      v41 = v40 + v37 - [v36 countOfIndexesInRange:{0, v40 + v37}];
      if (v41 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v83 = [MEMORY[0x277CCA890] currentHandler];
        v87 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSArray<id<_CVCCollectionUpdateItem>> * _Nonnull _UIDiffableDataSourceApplyMoveUpdate(_UIDiffableDataSourceUpdate *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, _UIDataSourceSnapshotter *__strong _Nonnull, BOOL)"}];
        [v83 handleFailureInFunction:v87 file:@"_UIDiffableDataSourceUpdate.m" lineNumber:590 description:{@"Invalid parameter not satisfying: %@", @"insertionIndex != NSNotFound"}];
      }

      [v89 moveObjectsAtIndexes:v36 toIndex:v41];
      v42 = [v12 numberOfItemsInSection:v21];
      [v12 _deleteSection:v21];
      [v12 _insertSection:v32 withInitialCount:v42];
      if (v90)
      {
        v43 = [MEMORY[0x277CCAA70] indexPathForItem:0x7FFFFFFFFFFFFFFFLL inSection:v21];
        v44 = [MEMORY[0x277CCAA70] indexPathForItem:0x7FFFFFFFFFFFFFFFLL inSection:v32];
        _CVCUpdateItemAlloc();
        v45 = [objc_claimAutoreleasedReturnValue() initWithInitialIndexPath:v43 finalIndexPath:v44 updateAction:3];
        v92[0] = v45;
        v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v92 count:1];

LABEL_66:
LABEL_68:

        goto LABEL_69;
      }

      goto LABEL_67;
    }
  }

  else
  {
    v25 = [v11 indexOfObject:v16];
    v26 = [v11 indexOfObject:v18];
    if (v25 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v74 = [MEMORY[0x277CCA890] currentHandler];
      v75 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSArray<id<_CVCCollectionUpdateItem>> * _Nonnull _UIDiffableDataSourceApplyMoveUpdate(_UIDiffableDataSourceUpdate *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, _UIDataSourceSnapshotter *__strong _Nonnull, BOOL)"}];
      [v74 handleFailureInFunction:v75 file:@"_UIDiffableDataSourceUpdate.m" lineNumber:614 description:{@"Invalid parameter not satisfying: %@", @"fromIndex != NSNotFound"}];
    }

    if (v26 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v76 = [MEMORY[0x277CCA890] currentHandler];
      v77 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSArray<id<_CVCCollectionUpdateItem>> * _Nonnull _UIDiffableDataSourceApplyMoveUpdate(_UIDiffableDataSourceUpdate *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, _UIDataSourceSnapshotter *__strong _Nonnull, BOOL)"}];
      [v76 handleFailureInFunction:v77 file:@"_UIDiffableDataSourceUpdate.m" lineNumber:615 description:{@"Invalid parameter not satisfying: %@", @"toIndex != NSNotFound"}];
    }

    v27 = [v12 sectionForGlobalIndex:v25];
    v28 = [v12 sectionForGlobalIndex:v26];
    if (v27 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v85 = [MEMORY[0x277CCA890] currentHandler];
      v84 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSArray<id<_CVCCollectionUpdateItem>> * _Nonnull _UIDiffableDataSourceApplyMoveUpdate(_UIDiffableDataSourceUpdate *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, _UIDataSourceSnapshotter *__strong _Nonnull, BOOL)"}];
      [v85 handleFailureInFunction:v84 file:@"_UIDiffableDataSourceUpdate.m" lineNumber:619 description:{@"Invalid parameter not satisfying: %@", @"fromSection != NSNotFound"}];
    }

    if (v28 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v78 = [MEMORY[0x277CCA890] currentHandler];
      v86 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSArray<id<_CVCCollectionUpdateItem>> * _Nonnull _UIDiffableDataSourceApplyMoveUpdate(_UIDiffableDataSourceUpdate *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, _UIDataSourceSnapshotter *__strong _Nonnull, BOOL)"}];
      [v78 handleFailureInFunction:v86 file:@"_UIDiffableDataSourceUpdate.m" lineNumber:620 description:{@"Invalid parameter not satisfying: %@", @"toSection != NSNotFound"}];
    }

    v29 = [v9 relativePosition];
    if (v25 >= v26)
    {
      v30 = v25 > v26 && v29 == 1;
    }

    else if (v29)
    {
      v30 = 0;
    }

    else
    {
      v30 = -1;
    }

    v47 = v30 + v26;
    if (v30 + v26 != v25 || v27 != v28)
    {
      if (v47 != v25)
      {
        v48 = [MEMORY[0x277CCAA78] indexSetWithIndex:v25];
        [v89 moveObjectsAtIndexes:v48 toIndex:v47];
      }

      v33 = [v12 indexPathForGlobalIndex:v25];
      if (!v33)
      {
        v79 = [MEMORY[0x277CCA890] currentHandler];
        v80 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSArray<id<_CVCCollectionUpdateItem>> * _Nonnull _UIDiffableDataSourceApplyMoveUpdate(_UIDiffableDataSourceUpdate *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, _UIDataSourceSnapshotter *__strong _Nonnull, BOOL)"}];
        [v79 handleFailureInFunction:v80 file:@"_UIDiffableDataSourceUpdate.m" lineNumber:643 description:{@"Invalid parameter not satisfying: %@", @"fromIndexPath"}];
      }

      [v12 _decrementSectionCount:v27];
      [v12 _incrementSectionCount:v28];
      v36 = [v12 indexPathForGlobalIndex:v47];
      if (!v36)
      {
        v81 = [MEMORY[0x277CCA890] currentHandler];
        v82 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSArray<id<_CVCCollectionUpdateItem>> * _Nonnull _UIDiffableDataSourceApplyMoveUpdate(_UIDiffableDataSourceUpdate *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, _UIDataSourceSnapshotter *__strong _Nonnull, BOOL)"}];
        [v81 handleFailureInFunction:v82 file:@"_UIDiffableDataSourceUpdate.m" lineNumber:651 description:{@"Invalid parameter not satisfying: %@", @"toIndexPath"}];
      }

      if (v90)
      {
        _CVCUpdateItemAlloc();
        v43 = [objc_claimAutoreleasedReturnValue() initWithInitialIndexPath:v33 finalIndexPath:v36 updateAction:3];
        v91 = v43;
        v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v91 count:1];
        goto LABEL_66;
      }

LABEL_67:
      v20 = 0;
      goto LABEL_68;
    }
  }

LABEL_69:
  if (v90)
  {
    v49 = v20;
  }

  else
  {
    v49 = 0;
  }

  v50 = v49;

  return v49;
}

uint64_t _CVCApplicationIsAppleApp()
{
  if (qword_280AE5078 != -1)
  {
    dispatch_once(&qword_280AE5078, &__block_literal_global_1);
  }

  return _MergedGlobals_1;
}

void sub_243BAFF84(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}