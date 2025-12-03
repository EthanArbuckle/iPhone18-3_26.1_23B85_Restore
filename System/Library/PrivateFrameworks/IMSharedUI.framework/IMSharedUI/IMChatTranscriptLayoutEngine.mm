@interface IMChatTranscriptLayoutEngine
- (CGSize)contentSize;
- (IMChatTranscriptLayoutEngine)init;
- (IMChatTranscriptLayoutEngineDataSource)dataSource;
- (NSArray)layoutAttributes;
- (double)_spaceForVerticalSpaceDescriptor:(int64_t)descriptor;
- (id)_cachedDrawableAtIndexOrNil:(unint64_t)nil;
- (id)_cachedDrawableForTranscriptItem:(id)item atIndex:(unint64_t)index;
- (id)drawableAtIndex:(unint64_t)index;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
- (unint64_t)_numberOfTranscriptItems;
- (void)_buildLayoutAttributesIfNeeded;
- (void)_invalidateCachedItemData;
- (void)_updateContentSize;
- (void)_updateFrames;
- (void)reloadData;
- (void)removeItemsAtIndexPaths:(id)paths insertItemsAtIndexPaths:(id)indexPaths;
- (void)setDataSource:(id)source;
- (void)setLayoutSpecification:(id)specification;
@end

@implementation IMChatTranscriptLayoutEngine

- (IMChatTranscriptLayoutEngine)init
{
  v8.receiver = self;
  v8.super_class = IMChatTranscriptLayoutEngine;
  v2 = [(IMChatTranscriptLayoutEngine *)&v8 init];
  v5 = v2;
  if (v2)
  {
    objc_msgSend__invalidateCachedItemData(v2, v3, v4);
    v6 = v5;
  }

  return v5;
}

- (void)setLayoutSpecification:(id)specification
{
  specificationCopy = specification;
  layoutSpecification = self->_layoutSpecification;
  if (layoutSpecification != specificationCopy)
  {
    v11 = specificationCopy;
    if ((objc_msgSend_isEqual_(layoutSpecification, specificationCopy, specificationCopy) & 1) == 0)
    {
      v7 = objc_msgSend_copy(v11, v11, v6);
      v8 = self->_layoutSpecification;
      self->_layoutSpecification = v7;

      objc_msgSend_invalidateLayout(self, v9, v10);
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)setDataSource:(id)source
{
  obj = source;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_dataSource, obj);
    objc_msgSend_reloadData(self, v6, v7);
    v5 = obj;
  }
}

- (void)reloadData
{
  objc_msgSend__invalidateCachedItemData(self, a2, v2);

  objc_msgSend_invalidateLayout(self, v4, v5);
}

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = objc_msgSend_layoutAttributes(self, v5, v6);
  v10 = objc_msgSend_item(pathCopy, v8, v9);

  if (v10 >= objc_msgSend_count(v7, v11, v12))
  {
    v15 = IMLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_2548056A8(v7, v10, v15);
    }

    v14 = 0;
  }

  else
  {
    v14 = objc_msgSend_objectAtIndexedSubscript_(v7, v13, v10);
  }

  return v14;
}

- (CGSize)contentSize
{
  if (!self->_layoutAttributes)
  {
    v4 = objc_msgSend_layoutAttributes(self, a2, v2);
  }

  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_buildLayoutAttributesIfNeeded
{
  if (!self->_layoutAttributes)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    if (WeakRetained)
    {
      layoutSpecification = self->_layoutSpecification;

      if (layoutSpecification)
      {
        objc_msgSend_layoutBoundsSize(self->_layoutSpecification, v5, v6);
        v8 = v7;
        objc_msgSend_maximumBubbleWidth(self->_layoutSpecification, v9, v10);
        v12 = v11;
        v15 = objc_msgSend__numberOfTranscriptItems(self, v13, v14);
        v16 = objc_alloc(MEMORY[0x277CBEB18]);
        v19 = objc_msgSend_initWithCapacity_(v16, v17, v15);
        if (v15)
        {
          v20 = 0;
          for (i = 0; i != v15; ++i)
          {
            v22 = objc_msgSend_indexPathForItem_inSection_(MEMORY[0x277CCAA70], v18, i, 0);
            v23 = objc_loadWeakRetained(&self->_dataSource);
            v25 = objc_msgSend_layoutEngine_transcriptItemAtIndex_(v23, v24, self, i);

            v27 = objc_msgSend__cachedDrawableForTranscriptItem_atIndex_(self, v26, v25, i);
            objc_msgSend_sizeConstrainedToWidth_(v27, v28, v29, v12);
            v31 = v30;
            v33 = fmin(v32, v8);
            v34 = objc_alloc_init(IMChatTranscriptItemExtendedLayoutAttributes);
            v37 = objc_msgSend_layoutOrientation(v27, v35, v36);
            objc_msgSend_setLayoutOrientation_(v34, v38, v37);
            objc_msgSend_setIndexPath_(v34, v39, v22);
            objc_msgSend_setDrawableSize_(v34, v40, v41, v33, v31);
            if (v20)
            {
              v44 = objc_msgSend_layoutClassification(v20, v42, v43);
              v46 = objc_msgSend_verticalSpaceToPrecedingItemOfClassification_(v27, v45, v44);
              objc_msgSend__spaceForVerticalSpaceDescriptor_(self, v47, v46);
              objc_msgSend_setTopMargin_(v34, v48, v49);
            }

            objc_msgSend_addObject_(v19, v42, v34);

            v20 = v27;
          }
        }

        layoutAttributes = self->_layoutAttributes;
        self->_layoutAttributes = v19;

        objc_msgSend__updateFrames(self, v51, v52);

        MEMORY[0x2821F9670](self, sel__updateContentSize, v53);
      }
    }
  }
}

- (NSArray)layoutAttributes
{
  objc_msgSend__buildLayoutAttributesIfNeeded(self, a2, v2);
  layoutAttributes = self->_layoutAttributes;
  if (layoutAttributes)
  {
    v5 = layoutAttributes;
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

- (void)_updateFrames
{
  v51 = *MEMORY[0x277D85DE8];
  objc_msgSend_layoutBoundsSize(self->_layoutSpecification, a2, v2);
  v5 = v4;
  objc_msgSend_topMargin(self->_layoutSpecification, v6, v7);
  v9 = v8;
  objc_msgSend_leadingMargin(self->_layoutSpecification, v10, v11);
  v13 = v12;
  objc_msgSend_trailingMargin(self->_layoutSpecification, v14, v15);
  v17 = v16;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v18 = self->_layoutAttributes;
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v46, v50, 16);
  if (v20)
  {
    v23 = v20;
    v24 = *v47;
    v25 = *MEMORY[0x277CBF3A0];
    v26 = v5 - v17;
    v27 = v5 - (v13 + v17);
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v47 != v24)
        {
          objc_enumerationMutation(v18);
        }

        v29 = *(*(&v46 + 1) + 8 * i);
        objc_msgSend_topMargin(v29, v21, v22, v46);
        v31 = v30;
        objc_msgSend_drawableSize(v29, v32, v33);
        v35 = v34;
        v37 = v36;
        v40 = objc_msgSend_layoutOrientation(v29, v38, v39);
        if (v40 == 2)
        {
          v43 = v26 - v35;
        }

        else if (v40 == 1)
        {
          v43 = v13 + round((v27 - v35) * 0.5);
        }

        else if (v40)
        {
          v43 = v25;
        }

        else
        {
          v43 = v13;
        }

        v44 = v9 + v31;
        objc_msgSend_setFrame_(v29, v41, v42, v43, v44, v35, v37);
        v9 = v44 + v37;
      }

      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v21, &v46, v50, 16);
    }

    while (v23);
  }

  v45 = *MEMORY[0x277D85DE8];
}

- (double)_spaceForVerticalSpaceDescriptor:(int64_t)descriptor
{
  if (descriptor > 1)
  {
    if (descriptor == 2)
    {
      MEMORY[0x2821F9670](self->_layoutSpecification, sel_mediumVerticalItemSpacing, 2);
    }

    else if (descriptor == 3)
    {
      MEMORY[0x2821F9670](self->_layoutSpecification, sel_largeVerticalItemSpacing, 3);
    }
  }

  else if (descriptor)
  {
    if (descriptor == 1)
    {
      MEMORY[0x2821F9670](self->_layoutSpecification, sel_smallVerticalItemSpacing, 1);
    }
  }

  else
  {
    MEMORY[0x2821F9670](self->_layoutSpecification, sel_zeroVerticalItemSpacing, 0);
  }

  return result;
}

- (id)drawableAtIndex:(unint64_t)index
{
  objc_msgSend__buildLayoutAttributesIfNeeded(self, a2, index);
  cachedDrawables = self->_cachedDrawables;

  return objc_msgSend_objectAtIndex_(cachedDrawables, v5, index);
}

- (void)removeItemsAtIndexPaths:(id)paths insertItemsAtIndexPaths:(id)indexPaths
{
  v63 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  indexPathsCopy = indexPaths;
  v10 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v8, v9);
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v11 = pathsCopy;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v57, v62, 16);
  if (v13)
  {
    v16 = v13;
    v17 = *v58;
    do
    {
      v18 = 0;
      do
      {
        if (*v58 != v17)
        {
          objc_enumerationMutation(v11);
        }

        v19 = objc_msgSend_item(*(*(&v57 + 1) + 8 * v18), v14, v15);
        objc_msgSend_addIndex_(v10, v20, v19);
        ++v18;
      }

      while (v16 != v18);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v57, v62, 16);
    }

    while (v16);
  }

  objc_msgSend_removeObjectsAtIndexes_(self->_cachedDrawables, v21, v10);
  v24 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v22, v23);
  v25 = MEMORY[0x277CBEB18];
  v28 = objc_msgSend_count(indexPathsCopy, v26, v27);
  v30 = objc_msgSend_arrayWithCapacity_(v25, v29, v28);
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v31 = indexPathsCopy;
  v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v32, &v53, v61, 16);
  if (v33)
  {
    v36 = v33;
    v37 = *v54;
    do
    {
      v38 = 0;
      do
      {
        if (*v54 != v37)
        {
          objc_enumerationMutation(v31);
        }

        v39 = objc_msgSend_item(*(*(&v53 + 1) + 8 * v38), v34, v35);
        objc_msgSend_addIndex_(v24, v40, v39);
        ++v38;
      }

      while (v36 != v38);
      v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v34, &v53, v61, 16);
    }

    while (v36);
  }

  v47 = MEMORY[0x277D85DD0];
  v48 = 3221225472;
  v49 = sub_254801878;
  v50 = &unk_279789150;
  selfCopy = self;
  v52 = v30;
  v41 = v30;
  objc_msgSend_enumerateIndexesUsingBlock_(v24, v42, &v47);
  objc_msgSend_insertObjects_atIndexes_(self->_cachedDrawables, v43, v41, v24, v47, v48, v49, v50, selfCopy);
  objc_msgSend_invalidateLayout(self, v44, v45);

  v46 = *MEMORY[0x277D85DE8];
}

- (id)_cachedDrawableForTranscriptItem:(id)item atIndex:(unint64_t)index
{
  itemCopy = item;
  p_cachedDrawables = &self->_cachedDrawables;
  cachedDrawables = self->_cachedDrawables;
  if (!cachedDrawables)
  {
    v11 = objc_msgSend_array(MEMORY[0x277CBEB18], v6, v7);
    v12 = *p_cachedDrawables;
    *p_cachedDrawables = v11;

    cachedDrawables = *p_cachedDrawables;
  }

  v13 = objc_msgSend_count(cachedDrawables, v6, v7);
  if (v13 >= index)
  {
    if (v13 > index)
    {
      v16 = objc_msgSend__cachedDrawableAtIndexOrNil_(self, v14, index);
      if (v16)
      {
        v17 = v16;
        objc_msgSend_setChatTranscriptItem_(v16, v14, itemCopy);
        goto LABEL_16;
      }
    }

    v18 = objc_msgSend__makeDrawableForTranscriptItem_(self, v14, itemCopy);
    if (v18)
    {
      v17 = v18;
      objc_msgSend_setObject_atIndexedSubscript_(*p_cachedDrawables, v19, v18, index);
      goto LABEL_16;
    }

    v21 = objc_msgSend_null(MEMORY[0x277CBEB68], v19, v20);
    objc_msgSend_setObject_atIndexedSubscript_(*p_cachedDrawables, v22, v21, index);

    v23 = IMLogHandleForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_25480572C();
    }
  }

  else
  {
    v15 = IMLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_2548057C0(p_cachedDrawables, index, v15);
    }
  }

  v17 = 0;
LABEL_16:

  return v17;
}

- (id)_cachedDrawableAtIndexOrNil:(unint64_t)nil
{
  v3 = objc_msgSend_objectAtIndexedSubscript_(self->_cachedDrawables, a2, nil);
  v6 = objc_msgSend_null(MEMORY[0x277CBEB68], v4, v5);
  if (objc_msgSend_isEqual_(v3, v7, v6))
  {
    v8 = 0;
  }

  else
  {
    v8 = v3;
  }

  v9 = v8;

  return v8;
}

- (unint64_t)_numberOfTranscriptItems
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v5 = objc_msgSend_numberOfTranscriptItemsForLayoutEngine_(WeakRetained, v4, self);

  return v5;
}

- (void)_invalidateCachedItemData
{
  cachedDrawables = self->_cachedDrawables;
  self->_cachedDrawables = 0;
  MEMORY[0x2821F96F8]();
}

- (void)_updateContentSize
{
  v4 = objc_msgSend_lastObject(self->_layoutAttributes, a2, v2);
  v17 = v4;
  if (v4)
  {
    objc_msgSend_frame(v4, v5, v6);
    MaxY = CGRectGetMaxY(v19);
    objc_msgSend_layoutBoundsSize(self->_layoutSpecification, v8, v9);
    v11 = v10;
    objc_msgSend_bottomMargin(self->_layoutSpecification, v12, v13);
    objc_msgSend_setContentSize_(self, v15, v16, v11, MaxY + v14);
  }

  else
  {
    objc_msgSend_setContentSize_(self, v5, v6, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8));
  }
}

- (IMChatTranscriptLayoutEngineDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end