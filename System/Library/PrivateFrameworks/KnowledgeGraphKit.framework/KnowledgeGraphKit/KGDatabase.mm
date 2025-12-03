@interface KGDatabase
+ (BOOL)copyFromURL:(id)l toURL:(id)rL error:(id *)error;
+ (BOOL)destroyAtURL:(id)l error:(id *)error;
+ (BOOL)emptyDatabaseExistsAtURL:(id)l error:(id *)error;
+ (BOOL)migrateFromURL:(id)l toURL:(id)rL error:(id *)error;
+ (void)deleteClosedDatabaseFilesAtStoreURL:(id)l;
+ (void)initialize;
- (AttributeValueCursor)edgeAttributeValueCursorWithIdentifiers:(id)identifiers;
- (AttributeValueCursor)edgeAttributeValueCursorWithIdentifiers:(id)identifiers propertyName:(id)name;
- (AttributeValueCursor)nodeAttributeValueCursorWithIdentifiers:(id)identifiers;
- (AttributeValueCursor)nodeAttributeValueCursorWithIdentifiers:(id)identifiers propertyName:(id)name;
- (AttributeValueCursor)tombstoneEdgeAttributeValueCursorWithIdentifiers:(id)identifiers;
- (AttributeValueCursor)tombstoneNodeAttributeValueCursorWithIdentifiers:(id)identifiers;
- (BOOL)addEdges:(id)edges error:(id *)error;
- (BOOL)addNodes:(id)nodes error:(id *)error;
- (BOOL)appendNodeIdentifiersOfEdgesWithIdentifiers:(id)identifiers sourceNodeIdentifiers:(id)nodeIdentifiers targetNodeIdentifiers:(id)targetNodeIdentifiers error:(id *)error;
- (BOOL)beginTransactionWithError:(id *)error;
- (BOOL)commitTransactionWithError:(id *)error;
- (BOOL)copyToURL:(id)l error:(id *)error;
- (BOOL)isReadOnly;
- (BOOL)labelIdentifiers:(void *)identifiers forLabels:(id)labels foundAll:(BOOL *)all error:(id *)error;
- (BOOL)removeEdge:(unint64_t)edge error:(id *)error;
- (BOOL)removeEdges:(id)edges error:(id *)error;
- (BOOL)removeNode:(unint64_t)node error:(id *)error;
- (BOOL)removeNodes:(id)nodes error:(id *)error;
- (BOOL)rollbackTransactionWithError:(id *)error;
- (BOOL)setEdgeProperties:(id)properties forIdentifier:(unint64_t)identifier error:(id *)error;
- (BOOL)setNodeProperties:(id)properties forIdentifier:(unint64_t)identifier error:(id *)error;
- (Bitmap)upsertLabels:(SEL)labels error:(id)error;
- (EdgeCursor)edgeCursorWithIdentifiers:(id)identifiers;
- (EdgeCursor)tombstoneEdgeCursorWithIdentifiers:(id)identifiers;
- (KGDatabase)initWithURL:(id)l;
- (NSUUID)graphIdentifier;
- (NodeCursor)nodeCursorWithIdentifiers:(id)identifiers;
- (NodeCursor)tombstoneNodeCursorWithIdentifiers:(id)identifiers;
- (id)allEdgesForEdgeTable:(const void *)table withError:(id *)error;
- (id)allNodeIdentifiersOfEdgesWithIdentifiers:(id)identifiers error:(id *)error;
- (id)allNodesForTable:(const void *)table error:(id *)error;
- (id)edgeIdentifiersForNodeIdentifier:(unint64_t)identifier error:(id *)error;
- (id)edgeIdentifiersForPropertyName:(id)name rangeValue1:(id)value1 rangeValue2:(id)value2 comparator:(unint64_t)comparator error:(id *)error;
- (id)edgeIdentifiersForPropertyName:(id)name value:(id)value comparator:(unint64_t)comparator error:(id *)error;
- (id)edgeIdentifiersForPropertyName:(id)name values:(id)values error:(id *)error;
- (id)edgeIdentifiersSortedByPropertyForName:(id)name dataType:(int64_t)type ascending:(BOOL)ascending limit:(int64_t)limit edgeIdentifiers:(id)identifiers error:(id *)error;
- (id)edgeIdentifiersWithLabels:(id)labels direction:(unint64_t)direction forNodeIdentifier:(unint64_t)identifier error:(id *)error;
- (id)edgeLabels;
- (id)elementIdentifiersForPropertyName:(id)name rangeValue1:(id)value1 rangeValue2:(id)value2 comparator:(unint64_t)comparator valueTable:(const void *)table rowCount:(unint64_t)count error:(id *)error;
- (id)elementIdentifiersForPropertyName:(id)name value:(id)value comparator:(unint64_t)comparator valueTable:(const void *)table rowCount:(unint64_t)count error:(id *)error;
- (id)elementIdentifiersForPropertyName:(id)name values:(id)values valueTable:(const void *)table rowCount:(unint64_t)count error:(id *)error;
- (id)filterEdgeIdentifiersBetween:(id)between targetNodeIdentifiers:(id)identifiers filterEdgeIdentifiers:(id)edgeIdentifiers error:(id *)error;
- (id)filterEdgeIdentifiersForPropertyName:(id)name rangeValue1:(id)value1 rangeValue2:(id)value2 comparator:(unint64_t)comparator edgeIdentifiers:(id)identifiers error:(id *)error;
- (id)filterEdgeIdentifiersForPropertyName:(id)name value:(id)value comparator:(unint64_t)comparator edgeIdentifiers:(id)identifiers error:(id *)error;
- (id)filterEdgeIdentifiersForPropertyName:(id)name values:(id)values comparator:(unint64_t)comparator edgeIdentifiers:(id)identifiers error:(id *)error;
- (id)filterElementIdentifiersForPropertyName:(id)name rangeValue1:(id)value1 rangeValue2:(id)value2 comparator:(unint64_t)comparator elementIdentifiers:(id)identifiers valueTable:(const void *)table rowCount:(unint64_t)count error:(id *)self0;
- (id)filterElementIdentifiersForPropertyName:(id)name value:(id)value comparator:(unint64_t)comparator elementIdentifiers:(id)identifiers valueTable:(const void *)table rowCount:(unint64_t)count error:(id *)error;
- (id)filterElementIdentifiersForPropertyName:(id)name values:(id)values comparator:(unint64_t)comparator elementIdentifiers:(id)identifiers valueTable:(const void *)table rowCount:(unint64_t)count error:(id *)error;
- (id)filterInEdgeIdentifiersOfNodesWithIdentifiers:(id)identifiers filterEdgeIdentifiers:(id)edgeIdentifiers error:(id *)error;
- (id)filterNodeIdentifiersForPropertyName:(id)name rangeValue1:(id)value1 rangeValue2:(id)value2 comparator:(unint64_t)comparator nodeIdentifiers:(id)identifiers error:(id *)error;
- (id)filterNodeIdentifiersForPropertyName:(id)name value:(id)value comparator:(unint64_t)comparator nodeIdentifiers:(id)identifiers error:(id *)error;
- (id)filterNodeIdentifiersForPropertyName:(id)name values:(id)values comparator:(unint64_t)comparator nodeIdentifiers:(id)identifiers error:(id *)error;
- (id)filterOutEdgeIdentifiersOfNodesWithIdentifiers:(id)identifiers filterEdgeIdentifiers:(id)edgeIdentifiers error:(id *)error;
- (id)filterTombstoneEdgeIdentifiersForPropertyName:(id)name rangeValue1:(id)value1 rangeValue2:(id)value2 comparator:(unint64_t)comparator edgeIdentifiers:(id)identifiers error:(id *)error;
- (id)filterTombstoneEdgeIdentifiersForPropertyName:(id)name value:(id)value comparator:(unint64_t)comparator edgeIdentifiers:(id)identifiers error:(id *)error;
- (id)filterTombstoneEdgeIdentifiersForPropertyName:(id)name values:(id)values comparator:(unint64_t)comparator edgeIdentifiers:(id)identifiers error:(id *)error;
- (id)filterTombstoneNodeIdentifiersForPropertyName:(id)name rangeValue1:(id)value1 rangeValue2:(id)value2 comparator:(unint64_t)comparator nodeIdentifiers:(id)identifiers error:(id *)error;
- (id)filterTombstoneNodeIdentifiersForPropertyName:(id)name value:(id)value comparator:(unint64_t)comparator nodeIdentifiers:(id)identifiers error:(id *)error;
- (id)filterTombstoneNodeIdentifiersForPropertyName:(id)name values:(id)values comparator:(unint64_t)comparator nodeIdentifiers:(id)identifiers error:(id *)error;
- (id)inEdgeIdentifiersOfNodesWithIdentifiers:(id)identifiers error:(id *)error;
- (id)intersectionOfEdgesForEdgeTable:(const void *)table withLabels:(id)labels filterEdgeIdentifiers:(id)identifiers overrideIndex:(BOOL)index error:(id *)error;
- (id)intersectionOfEdgesWithLabels:(id)labels error:(id *)error;
- (id)intersectionOfEdgesWithLabels:(id)labels filterEdgeIdentifiers:(id)identifiers error:(id *)error;
- (id)intersectionOfNodesForNodeTable:(const void *)table withLabels:(id)labels filterNodeIdentifiers:(id)identifiers overrideIndex:(BOOL)index error:(id *)error;
- (id)intersectionOfNodesWithLabels:(id)labels error:(id *)error;
- (id)intersectionOfNodesWithLabels:(id)labels filterNodeIdentifiers:(id)identifiers error:(id *)error;
- (id)intersectionOfTombstoneEdgesWithLabels:(id)labels error:(id *)error;
- (id)intersectionOfTombstoneEdgesWithLabels:(id)labels filterEdgeIdentifiers:(id)identifiers error:(id *)error;
- (id)intersectionOfTombstoneNodesWithLabels:(id)labels error:(id *)error;
- (id)intersectionOfTombstoneNodesWithLabels:(id)labels filterNodeIdentifiers:(id)identifiers error:(id *)error;
- (id)labelIdentifierForLabelName:(id)name error:(id *)error;
- (id)labelNameForLabelIdentifier:(unint64_t)identifier;
- (id)labelsOfEdgesForIdentifiers:(id)identifiers;
- (id)labelsOfNodesForIdentifiers:(id)identifiers;
- (id)neighborNodeIdentifiersWithStartNodeIdentifiers:(id)identifiers edgeDirection:(unint64_t)direction edgeFilter:(id)filter error:(id *)error;
- (id)neighborNodesOfNodesForIdentifiers:(id)identifiers throughEdgesForIdentifiers:(id)forIdentifiers direction:(unint64_t)direction error:(id *)error;
- (id)neighborNodesOfNodesForIdentifiers:(id)identifiers throughEdgesWithLabels:(id)labels direction:(unint64_t)direction error:(id *)error;
- (id)noIndexIntersectionOfEdgesWithLabels:(id)labels error:(id *)error;
- (id)noIndexIntersectionOfNodesWithLabels:(id)labels error:(id *)error;
- (id)nodeIdentifiersForPropertyName:(id)name rangeValue1:(id)value1 rangeValue2:(id)value2 comparator:(unint64_t)comparator error:(id *)error;
- (id)nodeIdentifiersForPropertyName:(id)name value:(id)value comparator:(unint64_t)comparator error:(id *)error;
- (id)nodeIdentifiersForPropertyName:(id)name values:(id)values error:(id *)error;
- (id)nodeIdentifiersSortedByPropertyForName:(id)name dataType:(int64_t)type ascending:(BOOL)ascending limit:(int64_t)limit nodeIdentifiers:(id)identifiers error:(id *)error;
- (id)nodeIdentifiersWhereNoEdgesWithError:(id *)error;
- (id)nodeIdentifiersWhereNoInEdgesWithError:(id *)error;
- (id)nodeIdentifiersWhereNoOutEdgesWithError:(id *)error;
- (id)nodeLabels;
- (id)openModeDescription:(unint64_t)description;
- (id)outEdgeIdentifiersOfNodesWithIdentifiers:(id)identifiers error:(id *)error;
- (id)propertyNameForAttrIdentifier:(unint64_t)identifier;
- (id)propertyValueForCursor:(void *)cursor;
- (id)tombstoneEdgeIdentifiersForPropertyName:(id)name rangeValue1:(id)value1 rangeValue2:(id)value2 comparator:(unint64_t)comparator error:(id *)error;
- (id)tombstoneEdgeIdentifiersForPropertyName:(id)name value:(id)value comparator:(unint64_t)comparator error:(id *)error;
- (id)tombstoneEdgeIdentifiersForPropertyName:(id)name values:(id)values error:(id *)error;
- (id)tombstoneNodeIdentifiersForPropertyName:(id)name rangeValue1:(id)value1 rangeValue2:(id)value2 comparator:(unint64_t)comparator error:(id *)error;
- (id)tombstoneNodeIdentifiersForPropertyName:(id)name value:(id)value comparator:(unint64_t)comparator error:(id *)error;
- (id)tombstoneNodeIdentifiersForPropertyName:(id)name values:(id)values error:(id *)error;
- (id)transitiveClosureNeighborNodeIdentifiersWithStartNodeIdentifiers:(id)identifiers edgeDirection:(unint64_t)direction edgeFilter:(id)filter error:(id *)error;
- (id)unionOfEdgesForEdgeTable:(const void *)table withLabels:(id)labels filterEdgeIdentifiers:(id)identifiers error:(id *)error;
- (id)unionOfEdgesWithLabels:(id)labels error:(id *)error;
- (id)unionOfEdgesWithLabels:(id)labels filterEdgeIdentifiers:(id)identifiers error:(id *)error;
- (id)unionOfNodesForNodeTable:(const void *)table withLabels:(id)labels filterNodeIdentifiers:(id)identifiers error:(id *)error;
- (id)unionOfNodesWithLabels:(id)labels error:(id *)error;
- (id)unionOfNodesWithLabels:(id)labels filterNodeIdentifiers:(id)identifiers error:(id *)error;
- (id)unionOfTombstoneEdgesWithLabels:(id)labels error:(id *)error;
- (id)unionOfTombstoneEdgesWithLabels:(id)labels filterEdgeIdentifiers:(id)identifiers error:(id *)error;
- (id)unionOfTombstoneNodesWithLabels:(id)labels error:(id *)error;
- (id)unionOfTombstoneNodesWithLabels:(id)labels filterNodeIdentifiers:(id)identifiers error:(id *)error;
- (int)degasEdgeDirectionFromKG:(unint64_t)g;
- (shared_ptr<degas::Predicate>)degasPredicateForAllLabels:(void *)labels elementType:(int)type;
- (shared_ptr<degas::Predicate>)degasPredicateForAnyLabels:(void *)labels elementType:(int)type;
- (shared_ptr<degas::Predicate>)degasPredicateFromValue:(id)value comparator:(unint64_t)comparator attrId:(unint64_t)id elementType:(int)type;
- (shared_ptr<degas::Predicate>)degasPredicateFromValueArray:(id)array attrId:(unint64_t)id elementType:(int)type;
- (shared_ptr<degas::Predicate>)degasRangePredicateFromValue1:(id)value1 value2:(id)value2 comparator:(unint64_t)comparator attrId:(unint64_t)id elementType:(int)type;
- (uint64_t)transactionChangesAfterTransactionId:limit:block:;
- (unint64_t)addEdgeWithLabels:(id)labels properties:(id)properties sourceNodeIdentifier:(unint64_t)identifier targetNodeIdentifier:(unint64_t)nodeIdentifier error:(id *)error;
- (unint64_t)addNodeWithLabels:(id)labels properties:(id)properties error:(id *)error;
- (unint64_t)attributeIdentifierForPropertyName:(id)name error:(id *)error;
- (unint64_t)graphVersion;
- (unint64_t)insertNewLabel:(id)label error:(id *)error;
- (unint64_t)insertNewProperty:(id)property error:(id *)error;
- (unint64_t)upsertLabel:(id)label error:(id *)error;
- (void)_enumerateEdgeTableWithEdgeCursor:(void *)cursor block:(id)block;
- (void)_enumerateEdgesWithEdgeCursor:(void *)cursor propertiesCursor:(void *)propertiesCursor block:(id)block;
- (void)_enumerateNodeTableWithNodeCursor:(void *)cursor block:(id)block;
- (void)_enumerateNodesWithNodeCursor:(void *)cursor propertiesCursor:(void *)propertiesCursor block:(id)block;
- (void)_enumeratePropertiesForCursor:(void *)cursor block:(id)block;
- (void)_enumeratePropertiesWithCursor:(void *)cursor withBlock:(id)block;
- (void)close;
- (void)dealloc;
- (void)distributeValuesByType:(id)type toIntegerValues:(id)values floatValues:(id)floatValues stringValues:(id)stringValues;
- (void)enumerateEdgesWithIdentifiers:(id)identifiers block:(id)block;
- (void)enumerateNodesWithIdentifiers:(id)identifiers block:(id)block;
- (void)enumeratePropertyValuesForEdgesWithIdentifiers:(id)identifiers propertyName:(id)name withBlock:(id)block;
- (void)enumeratePropertyValuesForNodesWithIdentifiers:(id)identifiers propertyName:(id)name withBlock:(id)block;
- (void)enumerateSourceAndTargetIdentifiersWithEdgeIdentifiers:(id)identifiers block:(id)block;
- (void)enumerateTombstoneEdgesWithIdentifiers:(id)identifiers block:(id)block;
- (void)enumerateTombstoneNodesWithIdentifiers:(id)identifiers block:(id)block;
- (void)setFatalError:(id)error;
- (void)setGraphVersion:(unint64_t)version;
- (void)transactionChangesAfterTransactionId:(unint64_t)id limit:(int64_t)limit block:(id)block;
- (void)transactionChangesAfterTransactionId:limit:block:;
@end

@implementation KGDatabase

- (BOOL)rollbackTransactionWithError:(id *)error
{
  v5 = degas::Database::rollbackTransaction(self->_database);
  [(KGDatabaseNameCache *)self->_nameCache unloadCache];
  if (error && v5)
  {
    if ((v5 - 2) > 9)
    {
      v6 = -1;
    }

    else
    {
      v6 = qword_255972CE0[v5 - 2];
    }

    *error = kg_errorWithCode(v6);
  }

  [(KGDatabaseNameCache *)self->_nameCache transactionEnd];
  return v5 == 0;
}

- (BOOL)commitTransactionWithError:(id *)error
{
  v5 = degas::Database::commitTransaction(self->_database);
  if (v5)
  {
    [(KGDatabaseNameCache *)self->_nameCache unloadCache];
    if (error)
    {
      if ((v5 - 2) > 9)
      {
        v6 = -1;
      }

      else
      {
        v6 = qword_255972CE0[v5 - 2];
      }

      *error = kg_errorWithCode(v6);
    }
  }

  [(KGDatabaseNameCache *)self->_nameCache transactionEnd];
  return v5 == 0;
}

- (BOOL)beginTransactionWithError:(id *)error
{
  v5 = degas::Database::beginTransaction(self->_database);
  v6 = v5;
  if (error && v5)
  {
    if ((v5 - 2) > 9)
    {
      v7 = -1;
    }

    else
    {
      v7 = qword_255972CE0[v5 - 2];
    }

    *error = kg_errorWithCode(v7);
  }

  if (*(self->_database + 33) == 1)
  {
    [(KGDatabaseNameCache *)self->_nameCache setInvalid];
    *(self->_database + 33) = 0;
  }

  [(KGDatabaseNameCache *)self->_nameCache transactionBegin];
  return v6 == 0;
}

- (id)transitiveClosureNeighborNodeIdentifiersWithStartNodeIdentifiers:(id)identifiers edgeDirection:(unint64_t)direction edgeFilter:(id)filter error:(id *)error
{
  identifiersCopy = identifiers;
  [(KGDatabase *)self degasPredicateFromKGFilter:filter elementType:2];
  degas::NeighborQuery::NeighborQuery(&v18, &v20, self->_database);
  *v17 = 0u;
  v11 = degas::NeighborQuery::transitiveClosureNeighbors(&v18, [identifiersCopy bitmap], -[KGDatabase degasEdgeDirectionFromKG:](self, "degasEdgeDirectionFromKG:", direction), &v15);
  if (v11)
  {
    if (error)
    {
      if ((v11 - 2) > 9)
      {
        v12 = -1;
      }

      else
      {
        v12 = qword_255972CE0[v11 - 2];
      }

      kg_errorWithCode(v12);
      *error = v13 = 0;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = [[KGElementIdentifierSet alloc] initWithBitmap:&v15];
  }

  v22 = &v16;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v22);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  return v13;
}

- (id)neighborNodeIdentifiersWithStartNodeIdentifiers:(id)identifiers edgeDirection:(unint64_t)direction edgeFilter:(id)filter error:(id *)error
{
  identifiersCopy = identifiers;
  [(KGDatabase *)self degasPredicateFromKGFilter:filter elementType:2];
  degas::NeighborQuery::NeighborQuery(&v18, &v20, self->_database);
  *v17 = 0u;
  v11 = degas::NeighborQuery::neighbors(&v18, [identifiersCopy bitmap], -[KGDatabase degasEdgeDirectionFromKG:](self, "degasEdgeDirectionFromKG:", direction), &v15);
  if (v11)
  {
    if (error)
    {
      if ((v11 - 2) > 9)
      {
        v12 = -1;
      }

      else
      {
        v12 = qword_255972CE0[v11 - 2];
      }

      kg_errorWithCode(v12);
      *error = v13 = 0;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = [[KGElementIdentifierSet alloc] initWithBitmap:&v15];
  }

  v22 = &v16;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v22);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  return v13;
}

void __53__KGDatabase_degasPredicateFromKGFilter_elementType___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v30 = 0;
  v8 = [v7 attributeIdentifierForPropertyName:v5 error:&v30];
  v9 = v30;
  if (v8)
  {
    *buf = 0;
    *&buf[8] = 0;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v6 allObjects];

      v6 = v10;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v6;
      if ([v11 count])
      {
        v12 = *(a1 + 32);
        if (v12)
        {
          [v12 degasPredicateFromValueArray:v11 attrId:v8 elementType:*(a1 + 48)];
          v14 = v28;
          v13 = v29;
        }

        else
        {
          v13 = 0;
          v14 = 0;
        }

        *buf = v14;
        *&buf[8] = v13;
      }

      else
      {
        v13 = 0;
        v14 = 0;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v6;
        v17 = *(a1 + 32);
        v18 = [v16 value];
        v19 = [v16 comparator];
        if (v17)
        {
          [v17 degasPredicateFromValue:v18 comparator:v19 attrId:v8 elementType:*(a1 + 48)];
          v14 = v28;
          v13 = v29;
        }

        else
        {
          v13 = 0;
          v14 = 0;
        }

        v28 = 0;
        v29 = 0;
        *buf = v14;
        *&buf[8] = v13;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v24 = *(a1 + 32);
          if (v24)
          {
            [v24 degasPredicateFromValue:v6 comparator:1 attrId:v8 elementType:*(a1 + 48)];
            v25 = v28;
            v13 = v29;
          }

          else
          {
            v13 = 0;
            v25 = 0;
          }

          *buf = v25;
          *&buf[8] = v13;
          if (v25)
          {
            goto LABEL_24;
          }

          goto LABEL_29;
        }

        v20 = v6;
        v14 = *(a1 + 32);
        v21 = [v20 value1];
        v22 = [v20 value2];
        v23 = [v20 comparator];
        if (v14)
        {
          [v14 degasRangePredicateFromValue1:v21 value2:v22 comparator:v23 attrId:v8 elementType:*(a1 + 48)];
          v14 = v28;
          v13 = v29;
        }

        else
        {
          v13 = 0;
        }

        v28 = 0;
        v29 = 0;
        *buf = v14;
        *&buf[8] = v13;
      }
    }

    if (v14)
    {
LABEL_24:
      std::vector<std::shared_ptr<degas::Predicate>>::push_back[abi:ne200100](*(*(a1 + 40) + 8) + 48, buf);
LABEL_32:
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      goto LABEL_34;
    }

LABEL_29:
    v26 = KGLoggingConnection();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v28) = 0;
      _os_log_error_impl(&dword_255870000, v26, OS_LOG_TYPE_ERROR, "unexpected null predicate", &v28, 2u);
    }

    goto LABEL_32;
  }

  v15 = KGLoggingConnection();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    *&buf[4] = v5;
    *&buf[12] = 2112;
    *&buf[14] = v9;
    _os_log_error_impl(&dword_255870000, v15, OS_LOG_TYPE_ERROR, "failed attribute lookup for property %@, error=%@", buf, 0x16u);
  }

LABEL_34:
  v27 = *MEMORY[0x277D85DE8];
}

- (shared_ptr<degas::Predicate>)degasPredicateForAnyLabels:(void *)labels elementType:(int)type
{
  v5 = v4;
  if (type <= 1)
  {
    if (type)
    {
      if (type == 1)
      {
        operator new();
      }
    }

    else
    {
      v6 = KGLoggingConnection();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *v7 = 0;
        _os_log_error_impl(&dword_255870000, v6, OS_LOG_TYPE_ERROR, "unable to provide useful predicate for None element type", v7, 2u);
      }
    }
  }

  else
  {
    switch(type)
    {
      case 2:
        operator new();
      case 3:
        operator new();
      case 4:
        operator new();
    }
  }

  *v5 = 0;
  v5[1] = 0;
  result.var1 = a2;
  result.var0 = self;
  return result;
}

- (shared_ptr<degas::Predicate>)degasPredicateForAllLabels:(void *)labels elementType:(int)type
{
  v5 = v4;
  if (type <= 1)
  {
    if (type)
    {
      if (type == 1)
      {
        operator new();
      }
    }

    else
    {
      v6 = KGLoggingConnection();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *v7 = 0;
        _os_log_error_impl(&dword_255870000, v6, OS_LOG_TYPE_ERROR, "unable to provide useful predicate for None element type", v7, 2u);
      }
    }
  }

  else
  {
    switch(type)
    {
      case 2:
        operator new();
      case 3:
        operator new();
      case 4:
        operator new();
    }
  }

  *v5 = 0;
  v5[1] = 0;
  result.var1 = a2;
  result.var0 = self;
  return result;
}

- (shared_ptr<degas::Predicate>)degasRangePredicateFromValue1:(id)value1 value2:(id)value2 comparator:(unint64_t)comparator attrId:(unint64_t)id elementType:(int)type
{
  v11 = v7;
  v30 = *MEMORY[0x277D85DE8];
  value1Copy = value1;
  value2Copy = value2;
  v27 = 0u;
  memset(v28, 0, 25);
  kgPropertyType = [value1Copy kgPropertyType];
  if (kgPropertyType == [value2Copy kgPropertyType])
  {
    if ((type - 1) >= 4)
    {
      abort();
    }

    database = self->_database;
    v16 = qword_255972938[type - 1];
    rowCountForElementType(type, database);
    if (kgPropertyType > 1)
    {
      if (kgPropertyType == 2)
      {
        v21 = value1Copy;
        v22 = value2Copy;
        operator new();
      }

      if (kgPropertyType == 3)
      {
        v23 = value1Copy;
        v24 = value2Copy;
        stringNSToStd(buf, v23);
        stringNSToStd(__p, v24);
        operator new();
      }

      if (kgPropertyType != 4)
      {
        goto LABEL_10;
      }

LABEL_13:
      value1Copy;
      v20 = value2Copy;
      operator new();
    }

    if (kgPropertyType)
    {
      if (kgPropertyType != 1)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    v25 = KGLoggingConnection();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf[0]) = 138412290;
      *(buf + 4) = value1Copy;
      _os_log_error_impl(&dword_255870000, v25, OS_LOG_TYPE_ERROR, "unable to interpret value <%@> as valid property value", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf[0]) = 0;
    _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "selecting in a range with mismatched types", buf, 2u);
  }

LABEL_10:
  *v11 = 0;
  v11[1] = 0;
  buf[0] = v28;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](buf);

  v19 = *MEMORY[0x277D85DE8];
  result.var1 = v18;
  result.var0 = v17;
  return result;
}

- (shared_ptr<degas::Predicate>)degasPredicateFromValue:(id)value comparator:(unint64_t)comparator attrId:(unint64_t)id elementType:(int)type
{
  v9 = v6;
  v19 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  kgPropertyType = [valueCopy kgPropertyType];
  if ((type - 1) >= 4)
  {
    abort();
  }

  v12 = kgPropertyType;
  v13 = qword_255972938[type - 1];
  rowCountForElementType(type, self->_database);
  if (v12 > 1)
  {
    if (v12 == 2)
    {
      [valueCopy doubleValue];
      operator new();
    }

    if (v12 == 3)
    {
      stringNSToStd(buf, valueCopy);
      operator new();
    }

    if (v12 != 4)
    {
      goto LABEL_15;
    }

LABEL_9:
    [valueCopy longLongValue];
    operator new();
  }

  if (v12)
  {
    if (v12 != 1)
    {
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  v14 = KGLoggingConnection();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf[0]) = 138412290;
    *(buf + 4) = valueCopy;
    _os_log_error_impl(&dword_255870000, v14, OS_LOG_TYPE_ERROR, "unable to interpret value <%@> as valid property value", buf, 0xCu);
  }

LABEL_15:
  *v9 = 0;
  v9[1] = 0;

  v17 = *MEMORY[0x277D85DE8];
  result.var1 = v16;
  result.var0 = v15;
  return result;
}

- (shared_ptr<degas::Predicate>)degasPredicateFromValueArray:(id)array attrId:(unint64_t)id elementType:(int)type
{
  v8 = v5;
  v60 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [KGDatabase distributeValuesByType:"distributeValuesByType:toIntegerValues:floatValues:stringValues:" toIntegerValues:arrayCopy floatValues:v33 stringValues:?];
  v30 = v8;
  if ((type - 1) >= 4)
  {
    abort();
  }

  v9 = qword_255972938[type - 1];
  rowCountForElementType(type, self->_database);
  v53 = 0;
  v54 = 0;
  v55 = 0;
  if ([v34 count])
  {
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    obj = v34;
    v10 = [obj countByEnumeratingWithState:&v46 objects:v59 count:16];
    if (v10)
    {
      v11 = *v47;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v47 != v11)
          {
            objc_enumerationMutation(obj);
          }

          std::string::basic_string[abi:ne200100]<0>(&__p, [*(*(&v46 + 1) + 8 * i) UTF8String]);
          v13 = v51;
          if (v51 >= v52)
          {
            v15 = 0xAAAAAAAAAAAAAAABLL * ((v51 - v50) >> 3);
            v16 = v15 + 1;
            if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              std::vector<unsigned long long>::__throw_length_error[abi:ne200100]();
            }

            if (0x5555555555555556 * ((v52 - v50) >> 3) > v16)
            {
              v16 = 0x5555555555555556 * ((v52 - v50) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v52 - v50) >> 3) >= 0x555555555555555)
            {
              v17 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v17 = v16;
            }

            v56.__end_cap_.__value_ = &v50;
            if (v17)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v17);
            }

            v18 = 8 * ((v51 - v50) >> 3);
            v19 = __p;
            *(v18 + 16) = v45;
            *v18 = v19;
            v45 = 0;
            __p = 0uLL;
            v20 = 24 * v15 + 24;
            v21 = (24 * v15 - (v51 - v50));
            memcpy((v18 - (v51 - v50)), v50, v51 - v50);
            v22 = v50;
            v23 = v52;
            v50 = v21;
            v51 = v20;
            v52 = 0;
            v56.__end_ = v22;
            v56.__end_cap_.__value_ = v23;
            v56.__first_ = v22;
            v56.__begin_ = v22;
            std::__split_buffer<std::string>::~__split_buffer(&v56);
            v51 = v20;
            if (SHIBYTE(v45) < 0)
            {
              operator delete(__p);
            }
          }

          else
          {
            v14 = __p;
            *(v51 + 2) = v45;
            *v13 = v14;
            v51 = v13 + 24;
          }
        }

        v10 = [obj countByEnumeratingWithState:&v46 objects:v59 count:16];
      }

      while (v10);
    }

    operator new();
  }

  if ([v33 count])
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v24 = v33;
    if ([v24 countByEnumeratingWithState:&v40 objects:v58 count:16])
    {
      *v41;
      *v41;
      [**(&v40 + 1) longLongValue];
      std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(1uLL);
    }

    operator new();
  }

  if ([v32 count])
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v25 = v32;
    if ([v25 countByEnumeratingWithState:&v36 objects:v57 count:16])
    {
      *v37;
      *v37;
      [**(&v36 + 1) doubleValue];
      std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(1uLL);
    }

    operator new();
  }

  if ((v54 - v53) >= 0x11)
  {
    operator new();
  }

  if (v54 - v53 == 16)
  {
    v26 = v53[1];
    *v30 = *v53;
    v30[1] = v26;
    if (v26)
    {
      atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *v30 = 0;
    v30[1] = 0;
  }

  v56.__first_ = &v53;
  std::vector<std::shared_ptr<degas::Predicate>>::__destroy_vector::operator()[abi:ne200100](&v56);

  v29 = *MEMORY[0x277D85DE8];
  result.var1 = v28;
  result.var0 = v27;
  return result;
}

- (id)neighborNodesOfNodesForIdentifiers:(id)identifiers throughEdgesForIdentifiers:(id)forIdentifiers direction:(unint64_t)direction error:(id *)error
{
  identifiersCopy = identifiers;
  forIdentifiersCopy = forIdentifiers;
  v16 = 0u;
  memset(v17, 0, 25);
  v12 = degas::Database::nodeNeighborsViaEdges(self->_database, [identifiersCopy bitmap], objc_msgSend(forIdentifiersCopy, "bitmap"), &v16, -[KGDatabase degasEdgeDirectionFromKG:](self, "degasEdgeDirectionFromKG:", direction));
  if (v12)
  {
    if (error)
    {
      if ((v12 - 2) > 9)
      {
        v13 = -1;
      }

      else
      {
        v13 = qword_255972CE0[v12 - 2];
      }

      kg_errorWithCode(v13);
      *error = v14 = 0;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = [[KGElementIdentifierSet alloc] initWithBitmap:&v16];
  }

  v18 = v17;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v18);

  return v14;
}

- (id)neighborNodesOfNodesForIdentifiers:(id)identifiers throughEdgesWithLabels:(id)labels direction:(unint64_t)direction error:(id *)error
{
  identifiersCopy = identifiers;
  labelsCopy = labels;
  v12 = [(KGDatabase *)self degasEdgeDirectionFromKG:direction];
  v20 = 0u;
  memset(v21, 0, 25);
  v19 = 1;
  [(KGDatabase *)self labelIdentifiers:&v20 forLabels:labelsCopy foundAll:&v19 error:0];
  if (v19)
  {
    v17 = 0u;
    memset(v18, 0, 25);
    v13 = degas::Database::nodeNeighbors(self->_database, [identifiersCopy bitmap], &v17, &v20, v12);
    if (v13)
    {
      if (error)
      {
        if ((v13 - 2) > 9)
        {
          v14 = -1;
        }

        else
        {
          v14 = qword_255972CE0[v13 - 2];
        }

        kg_errorWithCode(v14);
        *error = v15 = 0;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = [[KGElementIdentifierSet alloc] initWithBitmap:&v17];
    }

    v22 = v18;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v22);
  }

  else
  {
    v15 = objc_alloc_init(KGElementIdentifierSet);
  }

  *&v17 = v21;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v17);

  return v15;
}

- (id)edgeIdentifiersWithLabels:(id)labels direction:(unint64_t)direction forNodeIdentifier:(unint64_t)identifier error:(id *)error
{
  [(KGDatabase *)self intersectionOfEdgesWithLabels:labels error:error];
  if (objc_claimAutoreleasedReturnValue())
  {
    [(KGDatabase *)self degasEdgeDirectionFromKG:direction];
    database = self->_database;
    degas::Database::edgesOfNode();
  }

  return 0;
}

- (id)edgeIdentifiersForNodeIdentifier:(unint64_t)identifier error:(id *)error
{
  v6 = 0u;
  memset(v7, 0, sizeof(v7));
  database = self->_database;
  degas::Database::edgesOfNode();
}

- (id)allNodeIdentifiersOfEdgesWithIdentifiers:(id)identifiers error:(id *)error
{
  identifiersCopy = identifiers;
  v8 = 0u;
  memset(v9, 0, 25);
  degas::Database::appendAllNodesForEdges(self->_database, [identifiersCopy bitmap], &v8);
  v6 = [[KGElementIdentifierSet alloc] initWithBitmap:&v8];
  v10 = v9;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v10);

  return v6;
}

- (BOOL)appendNodeIdentifiersOfEdgesWithIdentifiers:(id)identifiers sourceNodeIdentifiers:(id)nodeIdentifiers targetNodeIdentifiers:(id)targetNodeIdentifiers error:(id *)error
{
  identifiersCopy = identifiers;
  nodeIdentifiersCopy = nodeIdentifiers;
  targetNodeIdentifiersCopy = targetNodeIdentifiers;
  v12 = targetNodeIdentifiersCopy;
  if (nodeIdentifiersCopy | targetNodeIdentifiersCopy)
  {
    database = self->_database;
    if (nodeIdentifiersCopy)
    {
      if (targetNodeIdentifiersCopy)
      {
        degas::Database::appendSourceAndTargetNodesForEdges(database, [identifiersCopy bitmap], objc_msgSend(nodeIdentifiersCopy, "mutableBitmap"), objc_msgSend(targetNodeIdentifiersCopy, "mutableBitmap"));
      }

      else
      {
        degas::Database::appendSourceNodesForEdges(database, [identifiersCopy bitmap], objc_msgSend(nodeIdentifiersCopy, "mutableBitmap"));
      }
    }

    else
    {
      degas::Database::appendTargetNodesForEdges(database, [identifiersCopy bitmap], objc_msgSend(targetNodeIdentifiersCopy, "mutableBitmap"));
    }
  }

  return 1;
}

- (id)filterEdgeIdentifiersBetween:(id)between targetNodeIdentifiers:(id)identifiers filterEdgeIdentifiers:(id)edgeIdentifiers error:(id *)error
{
  betweenCopy = between;
  identifiersCopy = identifiers;
  edgeIdentifiersCopy = edgeIdentifiers;
  memset(v14, 0, 41);
  database = self->_database;
  if (edgeIdentifiersCopy)
  {
    degas::Database::filterEdgesBetweenNodes(database, [betweenCopy bitmap], objc_msgSend(identifiersCopy, "bitmap"), objc_msgSend(edgeIdentifiersCopy, "bitmap"), v14);
  }

  degas::Database::edgesBetweenNodes(database, [betweenCopy bitmap], objc_msgSend(identifiersCopy, "bitmap"), v14);
}

- (id)filterInEdgeIdentifiersOfNodesWithIdentifiers:(id)identifiers filterEdgeIdentifiers:(id)edgeIdentifiers error:(id *)error
{
  identifiersCopy = identifiers;
  edgeIdentifiersCopy = edgeIdentifiers;
  v11 = 0u;
  memset(v12, 0, 25);
  database = self->_database;
  [identifiersCopy bitmap];
  [edgeIdentifiersCopy bitmap];
  degas::Database::filterEdgesOfNodes();
}

- (id)filterOutEdgeIdentifiersOfNodesWithIdentifiers:(id)identifiers filterEdgeIdentifiers:(id)edgeIdentifiers error:(id *)error
{
  identifiersCopy = identifiers;
  edgeIdentifiersCopy = edgeIdentifiers;
  v11 = 0u;
  memset(v12, 0, 25);
  database = self->_database;
  [identifiersCopy bitmap];
  [edgeIdentifiersCopy bitmap];
  degas::Database::filterEdgesOfNodes();
}

- (id)inEdgeIdentifiersOfNodesWithIdentifiers:(id)identifiers error:(id *)error
{
  identifiersCopy = identifiers;
  v8 = 0u;
  memset(v9, 0, 25);
  database = self->_database;
  [identifiersCopy bitmap];
  degas::Database::edgesOfNodes();
}

- (id)outEdgeIdentifiersOfNodesWithIdentifiers:(id)identifiers error:(id *)error
{
  identifiersCopy = identifiers;
  v8 = 0u;
  memset(v9, 0, 25);
  database = self->_database;
  [identifiersCopy bitmap];
  degas::Database::edgesOfNodes();
}

- (void)transactionChangesAfterTransactionId:(unint64_t)id limit:(int64_t)limit block:(id)block
{
  v11[4] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  database = self->_database;
  v11[0] = &unk_2867A90D8;
  v11[1] = &blockCopy;
  v11[3] = v11;
  degas::Database::enumerateTransactionChangesAfterTransactionId(database, id, v8, v11);
  std::__function::__value_func<void ()(unsigned long long,degas::Database::TransactionChanges const&)>::~__value_func[abi:ne200100](v11);

  v9 = *MEMORY[0x277D85DE8];
}

- (uint64_t)transactionChangesAfterTransactionId:limit:block:
{
  v2 = *(result + 8);
  *a2 = &unk_2867A90D8;
  a2[1] = v2;
  return result;
}

- (void)transactionChangesAfterTransactionId:limit:block:
{
  v5 = *a2;
  v11 = [[KGElementIdentifierSet alloc] initWithBitmap:a3];
  v6 = [[KGElementIdentifierSet alloc] initWithBitmap:a3 + 48];
  v7 = [[KGElementIdentifierSet alloc] initWithBitmap:a3 + 96];
  v8 = [[KGElementIdentifierSet alloc] initWithBitmap:a3 + 144];
  v9 = [[KGElementIdentifierSet alloc] initWithBitmap:a3 + 192];
  v10 = [[KGElementIdentifierSet alloc] initWithBitmap:a3 + 240];
  (*(**(self + 8) + 16))();
}

- (id)unionOfTombstoneEdgesWithLabels:(id)labels filterEdgeIdentifiers:(id)identifiers error:(id *)error
{
  v5 = [(KGDatabase *)self unionOfEdgesForEdgeTable:self->_database + 864 withLabels:labels filterEdgeIdentifiers:identifiers error:error];

  return v5;
}

- (id)unionOfTombstoneEdgesWithLabels:(id)labels error:(id *)error
{
  v4 = [(KGDatabase *)self unionOfEdgesForEdgeTable:self->_database + 864 withLabels:labels filterEdgeIdentifiers:0 error:error];

  return v4;
}

- (id)unionOfEdgesWithLabels:(id)labels filterEdgeIdentifiers:(id)identifiers error:(id *)error
{
  v5 = [(KGDatabase *)self unionOfEdgesForEdgeTable:self->_database + 248 withLabels:labels filterEdgeIdentifiers:identifiers error:error];

  return v5;
}

- (id)unionOfEdgesWithLabels:(id)labels error:(id *)error
{
  v4 = [(KGDatabase *)self unionOfEdgesForEdgeTable:self->_database + 248 withLabels:labels filterEdgeIdentifiers:0 error:error];

  return v4;
}

- (id)unionOfEdgesForEdgeTable:(const void *)table withLabels:(id)labels filterEdgeIdentifiers:(id)identifiers error:(id *)error
{
  labelsCopy = labels;
  identifiersCopy = identifiers;
  v26 = 0u;
  memset(v27, 0, 25);
  memset(&v25, 0, 41);
  [(KGDatabase *)self labelIdentifiers:&v25 forLabels:labelsCopy foundAll:0 error:0];
  if (v25._bitSets.__begin_ == v25._bitSets.__end_ || (database = self->_database, v24[0] = table, v24[1] = database, (v14 = degas::EdgeLabelQuery::edgesForAnyLabels(v24, &v25, &v26)) == 0))
  {
    if (identifiersCopy)
    {
      v16 = v26;
      if (v26 == 0xFFFFFFFFLL)
      {
        v17 = v27[0];
        v18 = v27[1];
        if (v27[0] == v27[1])
        {
          v16 = 0;
        }

        else
        {
          v16 = 0;
          do
          {
            v19 = *v17;
            v20 = *(*v17 + 4);
            if (v20 == -1)
            {
              v21 = 0;
              v12 = 0uLL;
              do
              {
                do
                {
                  v12 = vpadalq_u16(v12, vpaddlq_u8(vcntq_s8(*(v19 + 16 + 4 * v21))));
                  v21 += 4;
                }

                while (v21 != 32);
                v21 = 0;
                v20 = vaddvq_s32(v12);
                v12 = 0uLL;
              }

              while (v20 == -1);
              *(v19 + 4) = v20;
            }

            v16 += v20;
            v17 += 2;
          }

          while (v17 != v18);
        }

        *&v26 = v16;
      }

      if (v16)
      {
        degas::Bitmap::intersectWith<degas::Bitmap>(&v26, [identifiersCopy bitmap]);
      }
    }

    v22 = [[KGElementIdentifierSet alloc] initWithBitmap:&v26];
  }

  else if (error)
  {
    if ((v14 - 2) > 9)
    {
      v15 = -1;
    }

    else
    {
      v15 = qword_255972CE0[v14 - 2];
    }

    kg_errorWithCode(v15);
    *error = v22 = 0;
  }

  else
  {
    v22 = 0;
  }

  v24[0] = &v25._bitSets.__begin_;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v24);
  v25._bitCount = v27;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v25);

  return v22;
}

- (id)intersectionOfTombstoneEdgesWithLabels:(id)labels filterEdgeIdentifiers:(id)identifiers error:(id *)error
{
  v5 = [(KGDatabase *)self intersectionOfEdgesForEdgeTable:self->_database + 864 withLabels:labels filterEdgeIdentifiers:identifiers overrideIndex:0 error:error];

  return v5;
}

- (id)intersectionOfTombstoneEdgesWithLabels:(id)labels error:(id *)error
{
  v4 = [(KGDatabase *)self intersectionOfEdgesForEdgeTable:self->_database + 864 withLabels:labels filterEdgeIdentifiers:0 overrideIndex:0 error:error];

  return v4;
}

- (id)intersectionOfEdgesWithLabels:(id)labels filterEdgeIdentifiers:(id)identifiers error:(id *)error
{
  v5 = [(KGDatabase *)self intersectionOfEdgesForEdgeTable:self->_database + 248 withLabels:labels filterEdgeIdentifiers:identifiers overrideIndex:0 error:error];

  return v5;
}

- (id)noIndexIntersectionOfEdgesWithLabels:(id)labels error:(id *)error
{
  v4 = [(KGDatabase *)self intersectionOfEdgesForEdgeTable:self->_database + 248 withLabels:labels filterEdgeIdentifiers:0 overrideIndex:1 error:error];

  return v4;
}

- (id)intersectionOfEdgesWithLabels:(id)labels error:(id *)error
{
  v4 = [(KGDatabase *)self intersectionOfEdgesForEdgeTable:self->_database + 248 withLabels:labels filterEdgeIdentifiers:0 overrideIndex:0 error:error];

  return v4;
}

- (id)intersectionOfEdgesForEdgeTable:(const void *)table withLabels:(id)labels filterEdgeIdentifiers:(id)identifiers overrideIndex:(BOOL)index error:(id *)error
{
  labelsCopy = labels;
  identifiersCopy = identifiers;
  v30 = 0u;
  memset(v31, 0, 25);
  v28 = 0u;
  memset(v29, 0, 25);
  v27 = 1;
  [(KGDatabase *)self labelIdentifiers:&v28 forLabels:labelsCopy foundAll:&v27 error:0];
  if (v27 == 1 && (database = self->_database, v26[0] = table, v26[1] = database, (v16 = degas::EdgeLabelQuery::edgesForAllLabels(v26, &v28, &v30, index)) != 0))
  {
    if (error)
    {
      if ((v16 - 2) > 9)
      {
        v17 = -1;
      }

      else
      {
        v17 = qword_255972CE0[v16 - 2];
      }

      kg_errorWithCode(v17);
      *error = v24 = 0;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    if (identifiersCopy)
    {
      v18 = v30;
      if (v30 == 0xFFFFFFFFLL)
      {
        v19 = v31[0];
        v20 = v31[1];
        if (v31[0] == v31[1])
        {
          v18 = 0;
        }

        else
        {
          v18 = 0;
          do
          {
            v21 = *v19;
            v22 = *(*v19 + 4);
            if (v22 == -1)
            {
              v23 = 0;
              v14 = 0uLL;
              do
              {
                do
                {
                  v14 = vpadalq_u16(v14, vpaddlq_u8(vcntq_s8(*(v21 + 16 + 4 * v23))));
                  v23 += 4;
                }

                while (v23 != 32);
                v23 = 0;
                v22 = vaddvq_s32(v14);
                v14 = 0uLL;
              }

              while (v22 == -1);
              *(v21 + 4) = v22;
            }

            v18 += v22;
            v19 += 2;
          }

          while (v19 != v20);
        }

        *&v30 = v18;
      }

      if (v18)
      {
        degas::Bitmap::intersectWith<degas::Bitmap>(&v30, [identifiersCopy bitmap]);
      }
    }

    v24 = [[KGElementIdentifierSet alloc] initWithBitmap:&v30];
  }

  v26[0] = v29;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v26);
  *&v28 = v31;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v28);

  return v24;
}

- (id)allEdgesForEdgeTable:(const void *)table withError:(id *)error
{
  v11 = 0u;
  memset(v12, 0, 25);
  database = self->_database;
  v10[0] = table;
  v10[1] = database;
  v6 = degas::EdgeLabelQuery::allEdges(v10, &v11);
  if (v6)
  {
    if (error)
    {
      if ((v6 - 2) > 9)
      {
        v7 = -1;
      }

      else
      {
        v7 = qword_255972CE0[v6 - 2];
      }

      kg_errorWithCode(v7);
      *error = v8 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = [[KGElementIdentifierSet alloc] initWithBitmap:&v11];
  }

  v10[0] = v12;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v10);

  return v8;
}

- (id)edgeIdentifiersSortedByPropertyForName:(id)name dataType:(int64_t)type ascending:(BOOL)ascending limit:(int64_t)limit edgeIdentifiers:(id)identifiers error:(id *)error
{
  ascendingCopy = ascending;
  nameCopy = name;
  identifiersCopy = identifiers;
  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = [(KGDatabase *)self attributeIdentifierForPropertyName:nameCopy error:error];
  if (type <= 1)
  {
    if (!type)
    {
      v26 = 6;
      if (error)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }

    if (type != 1)
    {
LABEL_15:
      v28 = v16;
      goto LABEL_20;
    }

    goto LABEL_8;
  }

  switch(type)
  {
    case 2:
      database = self->_database;
      bitmap = [identifiersCopy bitmap];
      v20 = v31;
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __100__KGDatabase_edgeIdentifiersSortedByPropertyForName_dataType_ascending_limit_edgeIdentifiers_error___block_invoke_2;
      v31[3] = &unk_2797FEA80;
      v31[4] = v16;
      v21 = degas::Database::sortEdgesByRealAttribute(database, v17, ascendingCopy, limit, bitmap, v31);
      break;
    case 3:
      v24 = self->_database;
      bitmap2 = [identifiersCopy bitmap];
      v20 = v30;
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __100__KGDatabase_edgeIdentifiersSortedByPropertyForName_dataType_ascending_limit_edgeIdentifiers_error___block_invoke_3;
      v30[3] = &unk_2797FEAA8;
      v30[4] = v16;
      v21 = degas::Database::sortEdgesByStringAttribute(v24, v17, ascendingCopy, limit, bitmap2, v30);
      break;
    case 4:
LABEL_8:
      v18 = self->_database;
      bitmap3 = [identifiersCopy bitmap];
      v20 = v32;
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __100__KGDatabase_edgeIdentifiersSortedByPropertyForName_dataType_ascending_limit_edgeIdentifiers_error___block_invoke;
      v32[3] = &unk_2797FEA58;
      v32[4] = v16;
      v21 = degas::Database::sortEdgesByIntAttribute(v18, v17, ascendingCopy, limit, bitmap3, v32);
      break;
    default:
      goto LABEL_15;
  }

  v26 = v21;

  if (!v26)
  {
    goto LABEL_15;
  }

  if (error)
  {
LABEL_13:
    if ((v26 - 2) > 9)
    {
      v27 = -1;
    }

    else
    {
      v27 = qword_255972CE0[v26 - 2];
    }

    kg_errorWithCode(v27);
    *error = v28 = 0;
    goto LABEL_20;
  }

LABEL_19:
  v28 = 0;
LABEL_20:

  return v28;
}

void __100__KGDatabase_edgeIdentifiersSortedByPropertyForName_dataType_ascending_limit_edgeIdentifiers_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a2];
  [v2 addObject:?];
}

void __100__KGDatabase_edgeIdentifiersSortedByPropertyForName_dataType_ascending_limit_edgeIdentifiers_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a2];
  [v2 addObject:?];
}

void __100__KGDatabase_edgeIdentifiersSortedByPropertyForName_dataType_ascending_limit_edgeIdentifiers_error___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a2];
  [v2 addObject:?];
}

- (id)filterTombstoneEdgeIdentifiersForPropertyName:(id)name rangeValue1:(id)value1 rangeValue2:(id)value2 comparator:(unint64_t)comparator edgeIdentifiers:(id)identifiers error:(id *)error
{
  v8 = [(KGDatabase *)self filterElementIdentifiersForPropertyName:name rangeValue1:value1 rangeValue2:value2 comparator:comparator elementIdentifiers:identifiers valueTable:self->_database + 1088 rowCount:1000 error:error];

  return v8;
}

- (id)filterEdgeIdentifiersForPropertyName:(id)name rangeValue1:(id)value1 rangeValue2:(id)value2 comparator:(unint64_t)comparator edgeIdentifiers:(id)identifiers error:(id *)error
{
  nameCopy = name;
  value1Copy = value1;
  value2Copy = value2;
  identifiersCopy = identifiers;
  v18 = [(KGDatabase *)self filterElementIdentifiersForPropertyName:nameCopy rangeValue1:value1Copy rangeValue2:value2Copy comparator:comparator elementIdentifiers:identifiersCopy valueTable:self->_database + 528 rowCount:degas::Database::edgeCount(self->_database) error:error];

  return v18;
}

- (id)filterTombstoneEdgeIdentifiersForPropertyName:(id)name values:(id)values comparator:(unint64_t)comparator edgeIdentifiers:(id)identifiers error:(id *)error
{
  v7 = [(KGDatabase *)self filterElementIdentifiersForPropertyName:name values:values comparator:comparator elementIdentifiers:identifiers valueTable:self->_database + 1088 rowCount:1000 error:error];

  return v7;
}

- (id)filterEdgeIdentifiersForPropertyName:(id)name values:(id)values comparator:(unint64_t)comparator edgeIdentifiers:(id)identifiers error:(id *)error
{
  nameCopy = name;
  valuesCopy = values;
  identifiersCopy = identifiers;
  v15 = [(KGDatabase *)self filterElementIdentifiersForPropertyName:nameCopy values:valuesCopy comparator:comparator elementIdentifiers:identifiersCopy valueTable:self->_database + 528 rowCount:degas::Database::edgeCount(self->_database) error:error];

  return v15;
}

- (id)filterTombstoneEdgeIdentifiersForPropertyName:(id)name value:(id)value comparator:(unint64_t)comparator edgeIdentifiers:(id)identifiers error:(id *)error
{
  v7 = [(KGDatabase *)self filterElementIdentifiersForPropertyName:name value:value comparator:comparator elementIdentifiers:identifiers valueTable:self->_database + 1088 rowCount:1000 error:error];

  return v7;
}

- (id)filterEdgeIdentifiersForPropertyName:(id)name value:(id)value comparator:(unint64_t)comparator edgeIdentifiers:(id)identifiers error:(id *)error
{
  nameCopy = name;
  valueCopy = value;
  identifiersCopy = identifiers;
  v15 = [(KGDatabase *)self filterElementIdentifiersForPropertyName:nameCopy value:valueCopy comparator:comparator elementIdentifiers:identifiersCopy valueTable:self->_database + 528 rowCount:degas::Database::edgeCount(self->_database) error:error];

  return v15;
}

- (id)tombstoneEdgeIdentifiersForPropertyName:(id)name values:(id)values error:(id *)error
{
  v5 = [(KGDatabase *)self elementIdentifiersForPropertyName:name values:values valueTable:self->_database + 1088 rowCount:1000 error:error];

  return v5;
}

- (id)edgeIdentifiersForPropertyName:(id)name values:(id)values error:(id *)error
{
  nameCopy = name;
  valuesCopy = values;
  v10 = [(KGDatabase *)self elementIdentifiersForPropertyName:nameCopy values:valuesCopy valueTable:self->_database + 528 rowCount:degas::Database::edgeCount(self->_database) error:error];

  return v10;
}

- (id)tombstoneEdgeIdentifiersForPropertyName:(id)name rangeValue1:(id)value1 rangeValue2:(id)value2 comparator:(unint64_t)comparator error:(id *)error
{
  v7 = [(KGDatabase *)self elementIdentifiersForPropertyName:name rangeValue1:value1 rangeValue2:value2 comparator:comparator valueTable:self->_database + 1088 rowCount:1000 error:error];

  return v7;
}

- (id)edgeIdentifiersForPropertyName:(id)name rangeValue1:(id)value1 rangeValue2:(id)value2 comparator:(unint64_t)comparator error:(id *)error
{
  nameCopy = name;
  value1Copy = value1;
  value2Copy = value2;
  v15 = [(KGDatabase *)self elementIdentifiersForPropertyName:nameCopy rangeValue1:value1Copy rangeValue2:value2Copy comparator:comparator valueTable:self->_database + 528 rowCount:degas::Database::edgeCount(self->_database) error:error];

  return v15;
}

- (id)tombstoneEdgeIdentifiersForPropertyName:(id)name value:(id)value comparator:(unint64_t)comparator error:(id *)error
{
  v6 = [(KGDatabase *)self elementIdentifiersForPropertyName:name value:value comparator:comparator valueTable:self->_database + 1088 rowCount:1000 error:error];

  return v6;
}

- (id)edgeIdentifiersForPropertyName:(id)name value:(id)value comparator:(unint64_t)comparator error:(id *)error
{
  nameCopy = name;
  valueCopy = value;
  v12 = [(KGDatabase *)self elementIdentifiersForPropertyName:nameCopy value:valueCopy comparator:comparator valueTable:self->_database + 528 rowCount:degas::Database::edgeCount(self->_database) error:error];

  return v12;
}

- (id)unionOfTombstoneNodesWithLabels:(id)labels filterNodeIdentifiers:(id)identifiers error:(id *)error
{
  v5 = [(KGDatabase *)self unionOfNodesForNodeTable:self->_database + 808 withLabels:labels filterNodeIdentifiers:identifiers error:error];

  return v5;
}

- (id)unionOfTombstoneNodesWithLabels:(id)labels error:(id *)error
{
  v4 = [(KGDatabase *)self unionOfNodesForNodeTable:self->_database + 808 withLabels:labels filterNodeIdentifiers:0 error:error];

  return v4;
}

- (id)unionOfNodesWithLabels:(id)labels filterNodeIdentifiers:(id)identifiers error:(id *)error
{
  v5 = [(KGDatabase *)self unionOfNodesForNodeTable:self->_database + 192 withLabels:labels filterNodeIdentifiers:identifiers error:error];

  return v5;
}

- (id)unionOfNodesWithLabels:(id)labels error:(id *)error
{
  v4 = [(KGDatabase *)self unionOfNodesForNodeTable:self->_database + 192 withLabels:labels filterNodeIdentifiers:0 error:error];

  return v4;
}

- (id)unionOfNodesForNodeTable:(const void *)table withLabels:(id)labels filterNodeIdentifiers:(id)identifiers error:(id *)error
{
  labelsCopy = labels;
  identifiersCopy = identifiers;
  v26 = 0u;
  memset(v27, 0, 25);
  memset(&v25, 0, 41);
  [(KGDatabase *)self labelIdentifiers:&v25 forLabels:labelsCopy foundAll:0 error:0];
  if (v25._bitSets.__begin_ == v25._bitSets.__end_ || (database = self->_database, v24[0] = table, v24[1] = database, (v14 = degas::NodeLabelQuery::nodesForAnyLabels(v24, &v25, &v26)) == 0))
  {
    if (identifiersCopy)
    {
      v16 = v26;
      if (v26 == 0xFFFFFFFFLL)
      {
        v17 = v27[0];
        v18 = v27[1];
        if (v27[0] == v27[1])
        {
          v16 = 0;
        }

        else
        {
          v16 = 0;
          do
          {
            v19 = *v17;
            v20 = *(*v17 + 4);
            if (v20 == -1)
            {
              v21 = 0;
              v12 = 0uLL;
              do
              {
                do
                {
                  v12 = vpadalq_u16(v12, vpaddlq_u8(vcntq_s8(*(v19 + 16 + 4 * v21))));
                  v21 += 4;
                }

                while (v21 != 32);
                v21 = 0;
                v20 = vaddvq_s32(v12);
                v12 = 0uLL;
              }

              while (v20 == -1);
              *(v19 + 4) = v20;
            }

            v16 += v20;
            v17 += 2;
          }

          while (v17 != v18);
        }

        *&v26 = v16;
      }

      if (v16)
      {
        degas::Bitmap::intersectWith<degas::Bitmap>(&v26, [identifiersCopy bitmap]);
      }
    }

    v22 = [[KGElementIdentifierSet alloc] initWithBitmap:&v26];
  }

  else if (error)
  {
    if ((v14 - 2) > 9)
    {
      v15 = -1;
    }

    else
    {
      v15 = qword_255972CE0[v14 - 2];
    }

    kg_errorWithCode(v15);
    *error = v22 = 0;
  }

  else
  {
    v22 = 0;
  }

  v24[0] = &v25._bitSets.__begin_;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v24);
  v25._bitCount = v27;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v25);

  return v22;
}

- (id)intersectionOfTombstoneNodesWithLabels:(id)labels filterNodeIdentifiers:(id)identifiers error:(id *)error
{
  v5 = [(KGDatabase *)self intersectionOfNodesForNodeTable:self->_database + 808 withLabels:labels filterNodeIdentifiers:identifiers overrideIndex:0 error:error];

  return v5;
}

- (id)intersectionOfTombstoneNodesWithLabels:(id)labels error:(id *)error
{
  v4 = [(KGDatabase *)self intersectionOfNodesForNodeTable:self->_database + 808 withLabels:labels filterNodeIdentifiers:0 overrideIndex:0 error:error];

  return v4;
}

- (id)intersectionOfNodesWithLabels:(id)labels filterNodeIdentifiers:(id)identifiers error:(id *)error
{
  v5 = [(KGDatabase *)self intersectionOfNodesForNodeTable:self->_database + 192 withLabels:labels filterNodeIdentifiers:identifiers overrideIndex:0 error:error];

  return v5;
}

- (id)noIndexIntersectionOfNodesWithLabels:(id)labels error:(id *)error
{
  v4 = [(KGDatabase *)self intersectionOfNodesForNodeTable:self->_database + 192 withLabels:labels filterNodeIdentifiers:0 overrideIndex:1 error:error];

  return v4;
}

- (id)intersectionOfNodesWithLabels:(id)labels error:(id *)error
{
  v4 = [(KGDatabase *)self intersectionOfNodesForNodeTable:self->_database + 192 withLabels:labels filterNodeIdentifiers:0 overrideIndex:0 error:error];

  return v4;
}

- (id)intersectionOfNodesForNodeTable:(const void *)table withLabels:(id)labels filterNodeIdentifiers:(id)identifiers overrideIndex:(BOOL)index error:(id *)error
{
  labelsCopy = labels;
  identifiersCopy = identifiers;
  v30 = 0u;
  memset(v31, 0, 25);
  v28 = 0u;
  memset(v29, 0, 25);
  v27 = 1;
  if (![(KGDatabase *)self labelIdentifiers:&v28 forLabels:labelsCopy foundAll:&v27 error:error])
  {
LABEL_7:
    v18 = 0;
    goto LABEL_26;
  }

  if (v27 == 1)
  {
    database = self->_database;
    v26[0] = table;
    v26[1] = database;
    v16 = degas::NodeLabelQuery::nodesForAllLabels(v26, &v28, &v30, index);
    if (v16)
    {
      if (error)
      {
        if ((v16 - 2) > 9)
        {
          v17 = -1;
        }

        else
        {
          v17 = qword_255972CE0[v16 - 2];
        }

        kg_errorWithCode(v17);
        *error = v18 = 0;
        goto LABEL_26;
      }

      goto LABEL_7;
    }
  }

  if (identifiersCopy)
  {
    v19 = v30;
    if (v30 == 0xFFFFFFFFLL)
    {
      v20 = v31[0];
      v21 = v31[1];
      if (v31[0] == v31[1])
      {
        v19 = 0;
      }

      else
      {
        v19 = 0;
        do
        {
          v22 = *v20;
          v23 = *(*v20 + 4);
          if (v23 == -1)
          {
            v24 = 0;
            v14 = 0uLL;
            do
            {
              do
              {
                v14 = vpadalq_u16(v14, vpaddlq_u8(vcntq_s8(*(v22 + 16 + 4 * v24))));
                v24 += 4;
              }

              while (v24 != 32);
              v24 = 0;
              v23 = vaddvq_s32(v14);
              v14 = 0uLL;
            }

            while (v23 == -1);
            *(v22 + 4) = v23;
          }

          v19 += v23;
          v20 += 2;
        }

        while (v20 != v21);
      }

      *&v30 = v19;
    }

    if (v19)
    {
      degas::Bitmap::intersectWith<degas::Bitmap>(&v30, [identifiersCopy bitmap]);
    }
  }

  v18 = [[KGElementIdentifierSet alloc] initWithBitmap:&v30];
LABEL_26:
  v26[0] = v29;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v26);
  *&v28 = v31;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v28);

  return v18;
}

- (id)nodeIdentifiersWhereNoOutEdgesWithError:(id *)error
{
  v5 = degas::NodeCursor::NodeCursor(v14);
  degas::NodeCursor::setForNoOutEdges(v5, (self->_database + 192));
  v12 = 0u;
  memset(v13, 0, 25);
  while (1)
  {
    v6 = degas::Statement::next(v14[0]);
    if (v6 != 1)
    {
      break;
    }

    v7 = sqlite3_column_int64(*v14[0], 0);
    degas::Bitmap::setBit(&v12, v7);
  }

  v8 = v6 - 2;
  if (v6 == 2)
  {
    v9 = [[KGElementIdentifierSet alloc] initWithBitmap:&v12];
  }

  else if (error)
  {
    if (v8 > 9)
    {
      v10 = -1;
    }

    else
    {
      v10 = qword_255972CE0[v8];
    }

    kg_errorWithCode(v10);
    *error = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

  v15 = v13;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v15);
  degas::Cursor::~Cursor(v14);

  return v9;
}

- (id)nodeIdentifiersWhereNoInEdgesWithError:(id *)error
{
  v5 = degas::NodeCursor::NodeCursor(v14);
  degas::NodeCursor::setForNoInEdges(v5, (self->_database + 192));
  v12 = 0u;
  memset(v13, 0, 25);
  while (1)
  {
    v6 = degas::Statement::next(v14[0]);
    if (v6 != 1)
    {
      break;
    }

    v7 = sqlite3_column_int64(*v14[0], 0);
    degas::Bitmap::setBit(&v12, v7);
  }

  v8 = v6 - 2;
  if (v6 == 2)
  {
    v9 = [[KGElementIdentifierSet alloc] initWithBitmap:&v12];
  }

  else if (error)
  {
    if (v8 > 9)
    {
      v10 = -1;
    }

    else
    {
      v10 = qword_255972CE0[v8];
    }

    kg_errorWithCode(v10);
    *error = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

  v15 = v13;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v15);
  degas::Cursor::~Cursor(v14);

  return v9;
}

- (id)nodeIdentifiersWhereNoEdgesWithError:(id *)error
{
  v5 = degas::NodeCursor::NodeCursor(v14);
  degas::NodeCursor::setForNoEdges(v5, (self->_database + 192));
  v12 = 0u;
  memset(v13, 0, 25);
  while (1)
  {
    v6 = degas::Statement::next(v14[0]);
    if (v6 != 1)
    {
      break;
    }

    v7 = sqlite3_column_int64(*v14[0], 0);
    degas::Bitmap::setBit(&v12, v7);
  }

  v8 = v6 - 2;
  if (v6 == 2)
  {
    v9 = [[KGElementIdentifierSet alloc] initWithBitmap:&v12];
  }

  else if (error)
  {
    if (v8 > 9)
    {
      v10 = -1;
    }

    else
    {
      v10 = qword_255972CE0[v8];
    }

    kg_errorWithCode(v10);
    *error = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

  v15 = v13;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v15);
  degas::Cursor::~Cursor(v14);

  return v9;
}

- (id)allNodesForTable:(const void *)table error:(id *)error
{
  v11 = 0u;
  memset(v12, 0, 25);
  database = self->_database;
  v10[0] = table;
  v10[1] = database;
  v6 = degas::NodeLabelQuery::allNodes(v10, &v11);
  if (v6)
  {
    if (error)
    {
      if ((v6 - 2) > 9)
      {
        v7 = -1;
      }

      else
      {
        v7 = qword_255972CE0[v6 - 2];
      }

      kg_errorWithCode(v7);
      *error = v8 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = [[KGElementIdentifierSet alloc] initWithBitmap:&v11];
  }

  v10[0] = v12;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v10);

  return v8;
}

- (id)nodeIdentifiersSortedByPropertyForName:(id)name dataType:(int64_t)type ascending:(BOOL)ascending limit:(int64_t)limit nodeIdentifiers:(id)identifiers error:(id *)error
{
  ascendingCopy = ascending;
  nameCopy = name;
  identifiersCopy = identifiers;
  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = [(KGDatabase *)self attributeIdentifierForPropertyName:nameCopy error:error];
  if (type <= 1)
  {
    if (!type)
    {
      v26 = 6;
      if (error)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }

    if (type != 1)
    {
LABEL_15:
      v28 = v16;
      goto LABEL_20;
    }

    goto LABEL_8;
  }

  switch(type)
  {
    case 2:
      database = self->_database;
      bitmap = [identifiersCopy bitmap];
      v20 = v31;
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __100__KGDatabase_nodeIdentifiersSortedByPropertyForName_dataType_ascending_limit_nodeIdentifiers_error___block_invoke_2;
      v31[3] = &unk_2797FEA80;
      v31[4] = v16;
      v21 = degas::Database::sortNodesByRealAttribute(database, v17, ascendingCopy, limit, bitmap, v31);
      break;
    case 3:
      v24 = self->_database;
      bitmap2 = [identifiersCopy bitmap];
      v20 = v30;
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __100__KGDatabase_nodeIdentifiersSortedByPropertyForName_dataType_ascending_limit_nodeIdentifiers_error___block_invoke_3;
      v30[3] = &unk_2797FEAA8;
      v30[4] = v16;
      v21 = degas::Database::sortNodesByStringAttribute(v24, v17, ascendingCopy, limit, bitmap2, v30);
      break;
    case 4:
LABEL_8:
      v18 = self->_database;
      bitmap3 = [identifiersCopy bitmap];
      v20 = v32;
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __100__KGDatabase_nodeIdentifiersSortedByPropertyForName_dataType_ascending_limit_nodeIdentifiers_error___block_invoke;
      v32[3] = &unk_2797FEA58;
      v32[4] = v16;
      v21 = degas::Database::sortNodesByIntAttribute(v18, v17, ascendingCopy, limit, bitmap3, v32);
      break;
    default:
      goto LABEL_15;
  }

  v26 = v21;

  if (!v26)
  {
    goto LABEL_15;
  }

  if (error)
  {
LABEL_13:
    if ((v26 - 2) > 9)
    {
      v27 = -1;
    }

    else
    {
      v27 = qword_255972CE0[v26 - 2];
    }

    kg_errorWithCode(v27);
    *error = v28 = 0;
    goto LABEL_20;
  }

LABEL_19:
  v28 = 0;
LABEL_20:

  return v28;
}

void __100__KGDatabase_nodeIdentifiersSortedByPropertyForName_dataType_ascending_limit_nodeIdentifiers_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a2];
  [v2 addObject:?];
}

void __100__KGDatabase_nodeIdentifiersSortedByPropertyForName_dataType_ascending_limit_nodeIdentifiers_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a2];
  [v2 addObject:?];
}

void __100__KGDatabase_nodeIdentifiersSortedByPropertyForName_dataType_ascending_limit_nodeIdentifiers_error___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a2];
  [v2 addObject:?];
}

- (id)filterTombstoneNodeIdentifiersForPropertyName:(id)name rangeValue1:(id)value1 rangeValue2:(id)value2 comparator:(unint64_t)comparator nodeIdentifiers:(id)identifiers error:(id *)error
{
  v8 = [(KGDatabase *)self filterElementIdentifiersForPropertyName:name rangeValue1:value1 rangeValue2:value2 comparator:comparator elementIdentifiers:identifiers valueTable:self->_database + 1032 rowCount:1000 error:error];

  return v8;
}

- (id)filterNodeIdentifiersForPropertyName:(id)name rangeValue1:(id)value1 rangeValue2:(id)value2 comparator:(unint64_t)comparator nodeIdentifiers:(id)identifiers error:(id *)error
{
  nameCopy = name;
  value1Copy = value1;
  value2Copy = value2;
  identifiersCopy = identifiers;
  v18 = [(KGDatabase *)self filterElementIdentifiersForPropertyName:nameCopy rangeValue1:value1Copy rangeValue2:value2Copy comparator:comparator elementIdentifiers:identifiersCopy valueTable:self->_database + 472 rowCount:degas::Database::nodeCount(self->_database) error:error];

  return v18;
}

- (id)filterElementIdentifiersForPropertyName:(id)name rangeValue1:(id)value1 rangeValue2:(id)value2 comparator:(unint64_t)comparator elementIdentifiers:(id)identifiers valueTable:(const void *)table rowCount:(unint64_t)count error:(id *)self0
{
  v49 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  value1Copy = value1;
  value2Copy = value2;
  identifiersCopy = identifiers;
  v20 = [(KGDatabase *)self attributeIdentifierForPropertyName:nameCopy error:error];
  if (!v20)
  {
    v22 = objc_alloc_init(KGElementIdentifierSet);
    goto LABEL_47;
  }

  v45 = 0u;
  memset(v46, 0, 25);
  kgPropertyType = [value1Copy kgPropertyType];
  if (kgPropertyType == [value2Copy kgPropertyType])
  {
    if (comparator >= 9)
    {
      LODWORD(comparator) = 1;
    }

    v44[0] = table;
    v44[1] = count;
    if (kgPropertyType <= 1)
    {
      if (!kgPropertyType)
      {
        v35 = KGLoggingConnection();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = value1Copy;
          _os_log_error_impl(&dword_255870000, v35, OS_LOG_TYPE_ERROR, "unable to interpret value <%@> as valid property value", buf, 0xCu);
        }

        goto LABEL_32;
      }

      if (kgPropertyType != 1)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (kgPropertyType == 2)
      {
        v27 = value1Copy;
        v28 = value2Copy;
        [v27 doubleValue];
        v30 = v29;
        [v28 doubleValue];
        if (identifiersCopy)
        {
          v26 = degas::AttributeQuery::filterElementsForAttributeValueRange(v44, v20, comparator, [identifiersCopy bitmap], &v45, v30, v31);
        }

        else
        {
          v26 = degas::AttributeQuery::elementsForAttributeValueRange(v44, v20, comparator, &v45, v30, v31);
        }

        goto LABEL_28;
      }

      if (kgPropertyType == 3)
      {
        v32 = value1Copy;
        v33 = value2Copy;
        stringNSToStd(buf, v32);
        stringNSToStd(__p, v33);
        if (identifiersCopy)
        {
          v34 = degas::AttributeQuery::filterElementsForAttributeValueRange(v44, v20, buf, __p, comparator, [identifiersCopy bitmap], &v45);
        }

        else
        {
          v34 = degas::AttributeQuery::elementsForAttributeValueRange(v44, v20, buf, __p, comparator, &v45);
        }

        v36 = v34;
        if (v43 < 0)
        {
          operator delete(__p[0]);
        }

        if (v48 < 0)
        {
          operator delete(*buf);
        }

LABEL_29:

        v37 = v36 - 2;
        if (v36 != 2)
        {
          if (!v36)
          {
            v38 = [[KGElementIdentifierSet alloc] initWithBitmap:&v45];
LABEL_33:
            v22 = v38;
            goto LABEL_46;
          }

          if (error)
          {
            if (v37 > 9)
            {
              v39 = -1;
            }

            else
            {
              v39 = qword_255972CE0[v37];
            }

            v23 = kg_errorWithCode(v39);
            goto LABEL_14;
          }

LABEL_45:
          v22 = 0;
          goto LABEL_46;
        }

LABEL_32:
        v38 = objc_alloc_init(KGElementIdentifierSet);
        goto LABEL_33;
      }

      if (kgPropertyType != 4)
      {
        goto LABEL_32;
      }
    }

    v24 = value1Copy;
    v25 = value2Copy;
    if (identifiersCopy)
    {
      v26 = degas::AttributeQuery::filterElementsForAttributeValueRange(v44, v20, [v24 longLongValue], objc_msgSend(v25, "longLongValue"), comparator, objc_msgSend(identifiersCopy, "bitmap"), &v45);
    }

    else
    {
      v26 = degas::AttributeQuery::elementsForAttributeValueRange(v44, v20, [v24 longLongValue], objc_msgSend(v25, "longLongValue"), comparator, &v45);
    }

LABEL_28:
    v36 = v26;
    goto LABEL_29;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "selecting in a range with mismatched types", buf, 2u);
    if (!error)
    {
      goto LABEL_45;
    }
  }

  else if (!error)
  {
    goto LABEL_45;
  }

  v23 = kg_errorWithCode(5004);
LABEL_14:
  v22 = 0;
  *error = v23;
LABEL_46:
  *buf = v46;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](buf);
LABEL_47:

  v40 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)filterTombstoneNodeIdentifiersForPropertyName:(id)name values:(id)values comparator:(unint64_t)comparator nodeIdentifiers:(id)identifiers error:(id *)error
{
  v7 = [(KGDatabase *)self filterElementIdentifiersForPropertyName:name values:values comparator:comparator elementIdentifiers:identifiers valueTable:self->_database + 1032 rowCount:1000 error:error];

  return v7;
}

- (id)filterNodeIdentifiersForPropertyName:(id)name values:(id)values comparator:(unint64_t)comparator nodeIdentifiers:(id)identifiers error:(id *)error
{
  nameCopy = name;
  valuesCopy = values;
  identifiersCopy = identifiers;
  v15 = [(KGDatabase *)self filterElementIdentifiersForPropertyName:nameCopy values:valuesCopy comparator:comparator elementIdentifiers:identifiersCopy valueTable:self->_database + 472 rowCount:degas::Database::nodeCount(self->_database) error:error];

  return v15;
}

- (id)filterElementIdentifiersForPropertyName:(id)name values:(id)values comparator:(unint64_t)comparator elementIdentifiers:(id)identifiers valueTable:(const void *)table rowCount:(unint64_t)count error:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  valuesCopy = values;
  identifiersCopy = identifiers;
  if ([(KGDatabase *)self attributeIdentifierForPropertyName:nameCopy error:error])
  {
    v27 = 0u;
    memset(v28, 0, 25);
    v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [KGDatabase distributeValuesByType:"distributeValuesByType:toIntegerValues:floatValues:stringValues:" toIntegerValues:valuesCopy floatValues:v24 stringValues:?];
    v26[0] = table;
    v26[1] = count;
    v16 = [v23 count];
    if (v16)
    {
      if (!(v16 >> 61))
      {
        operator new();
      }

      std::vector<unsigned long long>::__throw_length_error[abi:ne200100]();
    }

    v18 = [v24 count];
    if (v18)
    {
      if (!(v18 >> 61))
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(v18);
      }

      std::vector<unsigned long long>::__throw_length_error[abi:ne200100]();
    }

    v19 = [v22 count];
    if (v19)
    {
      if (!(v19 >> 61))
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(v19);
      }

      std::vector<unsigned long long>::__throw_length_error[abi:ne200100]();
    }

    v17 = [[KGElementIdentifierSet alloc] initWithBitmap:&v27];

    v26[0] = v28;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v26);
  }

  else
  {
    v17 = objc_alloc_init(KGElementIdentifierSet);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)filterTombstoneNodeIdentifiersForPropertyName:(id)name value:(id)value comparator:(unint64_t)comparator nodeIdentifiers:(id)identifiers error:(id *)error
{
  v7 = [(KGDatabase *)self filterElementIdentifiersForPropertyName:name value:value comparator:comparator elementIdentifiers:identifiers valueTable:self->_database + 1032 rowCount:1000 error:error];

  return v7;
}

- (id)filterNodeIdentifiersForPropertyName:(id)name value:(id)value comparator:(unint64_t)comparator nodeIdentifiers:(id)identifiers error:(id *)error
{
  nameCopy = name;
  valueCopy = value;
  identifiersCopy = identifiers;
  v15 = [(KGDatabase *)self filterElementIdentifiersForPropertyName:nameCopy value:valueCopy comparator:comparator elementIdentifiers:identifiersCopy valueTable:self->_database + 472 rowCount:degas::Database::nodeCount(self->_database) error:error];

  return v15;
}

- (id)filterElementIdentifiersForPropertyName:(id)name value:(id)value comparator:(unint64_t)comparator elementIdentifiers:(id)identifiers valueTable:(const void *)table rowCount:(unint64_t)count error:(id *)error
{
  v40 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  valueCopy = value;
  identifiersCopy = identifiers;
  if (comparator == 8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [(KGDatabase *)self filterNodeIdentifiersForPropertyName:nameCopy values:valueCopy comparator:8 nodeIdentifiers:identifiersCopy error:error];
    }

    else
    {
      v21 = KGLoggingConnection();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = valueCopy;
        _os_log_error_impl(&dword_255870000, v21, OS_LOG_TYPE_ERROR, "Case insensitive In expects an array of values, not %@", buf, 0xCu);
      }

      v18 = objc_alloc_init(KGElementIdentifierSet);
    }

    goto LABEL_16;
  }

  v19 = [(KGDatabase *)self attributeIdentifierForPropertyName:nameCopy error:error];
  if (!v19)
  {
    v18 = objc_alloc_init(KGElementIdentifierSet);
LABEL_16:
    v22 = v18;
    goto LABEL_37;
  }

  *buf = 0u;
  memset(v39, 0, 25);
  kgPropertyType = [valueCopy kgPropertyType];
  if (comparator >= 9)
  {
    LODWORD(comparator) = 1;
  }

  tableCopy = table;
  countCopy = count;
  if (kgPropertyType <= 1)
  {
    if (!kgPropertyType)
    {
      v27 = KGLoggingConnection();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *__p = 138412290;
        *&__p[4] = valueCopy;
        _os_log_error_impl(&dword_255870000, v27, OS_LOG_TYPE_ERROR, "unable to interpret value <%@> as valid property value", __p, 0xCu);
      }

      goto LABEL_34;
    }

    if (kgPropertyType != 1)
    {
LABEL_34:
      v30 = objc_alloc_init(KGElementIdentifierSet);
      goto LABEL_35;
    }

    goto LABEL_19;
  }

  if (kgPropertyType == 2)
  {
    [valueCopy doubleValue];
    if (identifiersCopy)
    {
      v24 = degas::AttributeQuery::filterElementsForAttributeValue(&tableCopy, v19, comparator, [identifiersCopy bitmap], buf, v25);
    }

    else
    {
      v24 = degas::AttributeQuery::elementsForAttributeValue(&tableCopy, v19, comparator, buf, v25);
    }

    goto LABEL_30;
  }

  if (kgPropertyType != 3)
  {
    if (kgPropertyType != 4)
    {
      goto LABEL_34;
    }

LABEL_19:
    v23 = valueCopy;
    if (identifiersCopy)
    {
      v24 = degas::AttributeQuery::filterElementsForAttributeValue(&tableCopy, v19, [v23 longLongValue], comparator, objc_msgSend(identifiersCopy, "bitmap"), buf);
    }

    else
    {
      v24 = degas::AttributeQuery::elementsForAttributeValue(&tableCopy, v19, [v23 longLongValue], comparator, buf);
    }

LABEL_30:
    v28 = v24;
    goto LABEL_31;
  }

  stringNSToStd(__p, valueCopy);
  if (identifiersCopy)
  {
    v26 = degas::AttributeQuery::filterElementsForAttributeValue(&tableCopy, v19, __p, comparator, [identifiersCopy bitmap], buf);
  }

  else
  {
    v26 = degas::AttributeQuery::elementsForAttributeValue(&tableCopy, v19, __p, comparator, buf);
  }

  v28 = v26;
  if (v37 < 0)
  {
    operator delete(*__p);
  }

LABEL_31:

  v29 = v28 - 2;
  if (v28 == 2)
  {
    goto LABEL_34;
  }

  if (v28)
  {
    if (error)
    {
      if (v29 > 9)
      {
        v33 = -1;
      }

      else
      {
        v33 = qword_255972CE0[v29];
      }

      kg_errorWithCode(v33);
      *error = v22 = 0;
    }

    else
    {
      v22 = 0;
    }

    goto LABEL_36;
  }

  v30 = [[KGElementIdentifierSet alloc] initWithBitmap:buf];
LABEL_35:
  v22 = v30;
LABEL_36:
  *__p = v39;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](__p);
LABEL_37:

  v31 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)tombstoneNodeIdentifiersForPropertyName:(id)name values:(id)values error:(id *)error
{
  v5 = [(KGDatabase *)self elementIdentifiersForPropertyName:name values:values valueTable:self->_database + 1032 rowCount:0 error:error];

  return v5;
}

- (id)nodeIdentifiersForPropertyName:(id)name values:(id)values error:(id *)error
{
  nameCopy = name;
  valuesCopy = values;
  v10 = [(KGDatabase *)self elementIdentifiersForPropertyName:nameCopy values:valuesCopy valueTable:self->_database + 472 rowCount:degas::Database::nodeCount(self->_database) error:error];

  return v10;
}

- (id)elementIdentifiersForPropertyName:(id)name values:(id)values valueTable:(const void *)table rowCount:(unint64_t)count error:(id *)error
{
  v81 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  valuesCopy = values;
  v59 = nameCopy;
  v13 = [(KGDatabase *)self attributeIdentifierForPropertyName:nameCopy error:error];
  if (!v13)
  {
    v29 = objc_alloc_init(KGElementIdentifierSet);
    goto LABEL_51;
  }

  v76 = 0u;
  memset(v77, 0, 25);
  v60 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v61 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v58 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [KGDatabase distributeValuesByType:"distributeValuesByType:toIntegerValues:floatValues:stringValues:" toIntegerValues:valuesCopy floatValues:v61 stringValues:?];
  v75[0] = table;
  v75[1] = count;
  v14 = [v60 count];
  v57 = v13;
  if (v14)
  {
    errorCopy = error;
    tableCopy = table;
    v55 = &v53;
    v53 = v14;
    MEMORY[0x28223BE20](v14);
    v16 = (&v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v15 >= 0x200)
    {
      v17 = 512;
    }

    else
    {
      v17 = v15;
    }

    bzero(&v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v18 = v60;
    v19 = [v18 countByEnumeratingWithState:&v71 objects:v80 count:16];
    if (v19)
    {
      v20 = 0;
      v21 = *v72;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v72 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v71 + 1) + 8 * i);
          v24 = [v23 lengthOfBytesUsingEncoding:4];
          v25 = malloc_type_malloc(v24 + 1, 0x100004077774924uLL);
          v16[v20] = v25;
          [v23 getCString:v25 maxLength:v24 + 1 encoding:4];
          ++v20;
        }

        v19 = [v18 countByEnumeratingWithState:&v71 objects:v80 count:16];
      }

      while (v19);
    }

    error = errorCopy;
    v26 = v53;
    v27 = degas::implElementsForAttributeValues<char const*>(v57, v16, v53, 1, &v76, tableCopy);
    do
    {
      free(*v16);
      *v16++ = 0;
      --v26;
    }

    while (v26);
    if ((v27 & 0xFFFFFFFD) != 0)
    {
      if (error)
      {
        if ((v27 - 2) > 9)
        {
          v28 = -1;
        }

        else
        {
          v28 = qword_255972CE0[v27 - 2];
        }

LABEL_48:
        *error = kg_errorWithCode(v28);
        goto LABEL_49;
      }

      goto LABEL_49;
    }
  }

  v30 = [v61 count];
  v31 = v30;
  if (v30)
  {
    MEMORY[0x28223BE20](v30);
    v33 = &v53 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v34 = v61;
    v35 = [v34 countByEnumeratingWithState:&v67 objects:v79 count:16];
    if (v35)
    {
      v36 = 0;
      v37 = *v68;
      do
      {
        for (j = 0; j != v35; ++j)
        {
          if (*v68 != v37)
          {
            objc_enumerationMutation(v34);
          }

          *&v33[8 * v36++] = [*(*(&v67 + 1) + 8 * j) longLongValue];
        }

        v35 = [v34 countByEnumeratingWithState:&v67 objects:v79 count:16];
      }

      while (v35);
    }

    v39 = degas::AttributeQuery::elementsForAttributeValues(v75, v57, v33, v31, 1, &v76);
    if ((v39 & 0xFFFFFFFD) != 0)
    {
      if (error)
      {
        if ((v39 - 2) > 9)
        {
          v28 = -1;
        }

        else
        {
          v28 = qword_255972CE0[v39 - 2];
        }

        goto LABEL_48;
      }

LABEL_49:
      v29 = 0;
      goto LABEL_50;
    }
  }

  v40 = [v58 count];
  v41 = v40;
  if (v40)
  {
    MEMORY[0x28223BE20](v40);
    v43 = &v53 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v44 = v58;
    v45 = [v44 countByEnumeratingWithState:&v63 objects:v78 count:16];
    if (v45)
    {
      v46 = 0;
      v47 = *v64;
      do
      {
        for (k = 0; k != v45; ++k)
        {
          if (*v64 != v47)
          {
            objc_enumerationMutation(v44);
          }

          [*(*(&v63 + 1) + 8 * k) doubleValue];
          *&v43[8 * v46++] = v49;
        }

        v45 = [v44 countByEnumeratingWithState:&v63 objects:v78 count:16];
      }

      while (v45);
    }

    v50 = degas::AttributeQuery::elementsForAttributeValues(v75, v57, v43, v41, 1, &v76);
    if ((v50 & 0xFFFFFFFD) != 0)
    {
      if (error)
      {
        if ((v50 - 2) > 9)
        {
          v28 = -1;
        }

        else
        {
          v28 = qword_255972CE0[v50 - 2];
        }

        goto LABEL_48;
      }

      goto LABEL_49;
    }
  }

  v29 = [[KGElementIdentifierSet alloc] initWithBitmap:&v76];
LABEL_50:

  v75[0] = v77;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v75);
LABEL_51:

  v51 = *MEMORY[0x277D85DE8];

  return v29;
}

- (void)distributeValuesByType:(id)type toIntegerValues:(id)values floatValues:(id)floatValues stringValues:(id)stringValues
{
  v30 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  valuesCopy = values;
  floatValuesCopy = floatValues;
  stringValuesCopy = stringValues;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v13 = typeCopy;
  v14 = [v13 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v14)
  {
    v16 = *v24;
    *&v15 = 138412290;
    v22 = v15;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v23 + 1) + 8 * i);
        kgPropertyType = [v18 kgPropertyType];
        if (kgPropertyType <= 1)
        {
          if (kgPropertyType)
          {
            if (kgPropertyType != 1)
            {
              continue;
            }

LABEL_13:
            v20 = v18;
            [valuesCopy addObject:v20];
          }

          else
          {
            v20 = KGLoggingConnection();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = v22;
              v28 = v18;
              _os_log_error_impl(&dword_255870000, v20, OS_LOG_TYPE_ERROR, "unable to interpret value <%@> as valid property value", buf, 0xCu);
            }
          }

LABEL_18:

          continue;
        }

        switch(kgPropertyType)
        {
          case 2:
            v20 = v18;
            [floatValuesCopy addObject:v20];
            goto LABEL_18;
          case 3:
            v20 = v18;
            [stringValuesCopy addObject:v20];
            goto LABEL_18;
          case 4:
            goto LABEL_13;
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v14);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)tombstoneNodeIdentifiersForPropertyName:(id)name rangeValue1:(id)value1 rangeValue2:(id)value2 comparator:(unint64_t)comparator error:(id *)error
{
  v7 = [(KGDatabase *)self elementIdentifiersForPropertyName:name rangeValue1:value1 rangeValue2:value2 comparator:comparator valueTable:self->_database + 1032 rowCount:0 error:error];

  return v7;
}

- (id)nodeIdentifiersForPropertyName:(id)name rangeValue1:(id)value1 rangeValue2:(id)value2 comparator:(unint64_t)comparator error:(id *)error
{
  nameCopy = name;
  value1Copy = value1;
  value2Copy = value2;
  v15 = [(KGDatabase *)self elementIdentifiersForPropertyName:nameCopy rangeValue1:value1Copy rangeValue2:value2Copy comparator:comparator valueTable:self->_database + 472 rowCount:degas::Database::nodeCount(self->_database) error:error];

  return v15;
}

- (id)elementIdentifiersForPropertyName:(id)name rangeValue1:(id)value1 rangeValue2:(id)value2 comparator:(unint64_t)comparator valueTable:(const void *)table rowCount:(unint64_t)count error:(id *)error
{
  v44 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  value1Copy = value1;
  value2Copy = value2;
  v18 = [(KGDatabase *)self attributeIdentifierForPropertyName:nameCopy error:error];
  if (!v18)
  {
    v20 = objc_alloc_init(KGElementIdentifierSet);
    goto LABEL_40;
  }

  v40 = 0u;
  memset(v41, 0, 25);
  kgPropertyType = [value1Copy kgPropertyType];
  if (kgPropertyType == [value2Copy kgPropertyType])
  {
    if (comparator >= 9)
    {
      LODWORD(comparator) = 1;
    }

    v39[0] = table;
    v39[1] = count;
    if (kgPropertyType <= 1)
    {
      if (!kgPropertyType)
      {
        v34 = KGLoggingConnection();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = value1Copy;
          _os_log_error_impl(&dword_255870000, v34, OS_LOG_TYPE_ERROR, "unable to interpret value <%@> as valid property value", buf, 0xCu);
        }

        goto LABEL_33;
      }

      if (kgPropertyType != 1)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (kgPropertyType == 2)
      {
        v23 = value1Copy;
        v24 = value2Copy;
        [v23 doubleValue];
        v26 = v25;
        [v24 doubleValue];
        v22 = degas::AttributeQuery::elementsForAttributeValueRange(v39, v18, comparator, &v40, v26, v27);
        goto LABEL_19;
      }

      if (kgPropertyType == 3)
      {
        v32 = value1Copy;
        v33 = value2Copy;
        stringNSToStd(buf, v32);
        stringNSToStd(__p, v33);
        v28 = degas::AttributeQuery::elementsForAttributeValueRange(v39, v18, buf, __p, comparator, &v40);
        if (v38 < 0)
        {
          operator delete(__p[0]);
        }

        if (v43 < 0)
        {
          operator delete(*buf);
        }

LABEL_20:

        v29 = v28 - 2;
        if (v28 != 2)
        {
          if (!v28)
          {
            v30 = [[KGElementIdentifierSet alloc] initWithBitmap:&v40];
LABEL_34:
            v20 = v30;
            goto LABEL_39;
          }

          if (error)
          {
            if (v29 > 9)
            {
              v31 = -1;
            }

            else
            {
              v31 = qword_255972CE0[v29];
            }

            v21 = kg_errorWithCode(v31);
            goto LABEL_14;
          }

LABEL_38:
          v20 = 0;
          goto LABEL_39;
        }

LABEL_33:
        v30 = objc_alloc_init(KGElementIdentifierSet);
        goto LABEL_34;
      }

      if (kgPropertyType != 4)
      {
        goto LABEL_33;
      }
    }

    v22 = degas::AttributeQuery::elementsForAttributeValueRange(v39, v18, [value1Copy longLongValue], objc_msgSend(value2Copy, "longLongValue"), comparator, &v40);
LABEL_19:
    v28 = v22;
    goto LABEL_20;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "selecting in a range with mismatched types", buf, 2u);
    if (!error)
    {
      goto LABEL_38;
    }
  }

  else if (!error)
  {
    goto LABEL_38;
  }

  v21 = kg_errorWithCode(5004);
LABEL_14:
  v20 = 0;
  *error = v21;
LABEL_39:
  *buf = v41;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](buf);
LABEL_40:

  v35 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)tombstoneNodeIdentifiersForPropertyName:(id)name value:(id)value comparator:(unint64_t)comparator error:(id *)error
{
  v6 = [(KGDatabase *)self elementIdentifiersForPropertyName:name value:value comparator:comparator valueTable:self->_database + 1032 rowCount:0 error:error];

  return v6;
}

- (id)nodeIdentifiersForPropertyName:(id)name value:(id)value comparator:(unint64_t)comparator error:(id *)error
{
  nameCopy = name;
  valueCopy = value;
  v12 = [(KGDatabase *)self elementIdentifiersForPropertyName:nameCopy value:valueCopy comparator:comparator valueTable:self->_database + 472 rowCount:degas::Database::nodeCount(self->_database) error:error];

  return v12;
}

- (id)elementIdentifiersForPropertyName:(id)name value:(id)value comparator:(unint64_t)comparator valueTable:(const void *)table rowCount:(unint64_t)count error:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  valueCopy = value;
  v16 = [(KGDatabase *)self attributeIdentifierForPropertyName:nameCopy error:error];
  if (!v16)
  {
    v19 = objc_alloc_init(KGElementIdentifierSet);
    goto LABEL_29;
  }

  v30 = 0u;
  memset(v31, 0, 25);
  kgPropertyType = [valueCopy kgPropertyType];
  if (comparator >= 9)
  {
    LODWORD(comparator) = 1;
  }

  tableCopy = table;
  countCopy = count;
  if (kgPropertyType <= 1)
  {
    if (!kgPropertyType)
    {
      v25 = KGLoggingConnection();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *__p = 138412290;
        *&__p[4] = valueCopy;
        _os_log_error_impl(&dword_255870000, v25, OS_LOG_TYPE_ERROR, "unable to interpret value <%@> as valid property value", __p, 0xCu);
      }

      goto LABEL_26;
    }

    if (kgPropertyType == 1)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

  if (kgPropertyType == 2)
  {
    [valueCopy doubleValue];
    v18 = degas::AttributeQuery::elementsForAttributeValue(&tableCopy, v16, comparator, &v30, v20);
    goto LABEL_14;
  }

  if (kgPropertyType != 3)
  {
    if (kgPropertyType == 4)
    {
LABEL_8:
      v18 = degas::AttributeQuery::elementsForAttributeValue(&tableCopy, v16, [valueCopy longLongValue], comparator, &v30);
LABEL_14:
      v21 = v18;
      goto LABEL_15;
    }

LABEL_26:
    v23 = objc_alloc_init(KGElementIdentifierSet);
    goto LABEL_27;
  }

  stringNSToStd(__p, valueCopy);
  v21 = degas::AttributeQuery::elementsForAttributeValue(&tableCopy, v16, __p, comparator, &v30);
  if (v33 < 0)
  {
    operator delete(*__p);
  }

LABEL_15:

  v22 = v21 - 2;
  if (v21 == 2)
  {
    goto LABEL_26;
  }

  if (v21)
  {
    if (error)
    {
      if (v22 > 9)
      {
        v24 = -1;
      }

      else
      {
        v24 = qword_255972CE0[v22];
      }

      kg_errorWithCode(v24);
      *error = v19 = 0;
    }

    else
    {
      v19 = 0;
    }

    goto LABEL_28;
  }

  v23 = [[KGElementIdentifierSet alloc] initWithBitmap:&v30];
LABEL_27:
  v19 = v23;
LABEL_28:
  *__p = v31;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](__p);
LABEL_29:

  v26 = *MEMORY[0x277D85DE8];

  return v19;
}

- (BOOL)removeEdges:(id)edges error:(id *)error
{
  edgesCopy = edges;
  v7 = degas::Database::removeEdges(self->_database, [edgesCopy bitmap]);
  v8 = v7;
  if (error && v7)
  {
    if ((v7 - 2) > 9)
    {
      v9 = -1;
    }

    else
    {
      v9 = qword_255972CE0[v7 - 2];
    }

    *error = kg_errorWithCode(v9);
  }

  return v8 == 0;
}

- (BOOL)removeNodes:(id)nodes error:(id *)error
{
  nodesCopy = nodes;
  v7 = degas::Database::removeNodes(self->_database, [nodesCopy bitmap]);
  v8 = v7;
  if (error && v7)
  {
    if ((v7 - 2) > 9)
    {
      v9 = -1;
    }

    else
    {
      v9 = qword_255972CE0[v7 - 2];
    }

    *error = kg_errorWithCode(v9);
  }

  return v8 == 0;
}

- (BOOL)removeEdge:(unint64_t)edge error:(id *)error
{
  v5 = degas::Database::removeEdge(self->_database, edge, 0);
  v6 = v5;
  if (error && v5)
  {
    if ((v5 - 2) > 9)
    {
      v7 = -1;
    }

    else
    {
      v7 = qword_255972CE0[v5 - 2];
    }

    *error = kg_errorWithCode(v7);
  }

  return v6 == 0;
}

- (BOOL)removeNode:(unint64_t)node error:(id *)error
{
  v5 = degas::Database::removeNode(self->_database, node);
  v6 = v5;
  if (error && v5)
  {
    if ((v5 - 2) > 9)
    {
      v7 = -1;
    }

    else
    {
      v7 = qword_255972CE0[v5 - 2];
    }

    *error = kg_errorWithCode(v7);
  }

  return v6 == 0;
}

- (unint64_t)addEdgeWithLabels:(id)labels properties:(id)properties sourceNodeIdentifier:(unint64_t)identifier targetNodeIdentifier:(unint64_t)nodeIdentifier error:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
  labelsCopy = labels;
  propertiesCopy = properties;
  memset(v33, 0, 25);
  v32 = 0u;
  if (![labelsCopy count])
  {
    v15 = 0;
    v14 = 0;
    v16 = 0;
LABEL_5:
    v23 = v16;
    v24 = 0u;
    v25 = 0u;
    std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(&v24 + 8, v14, v15, (v15 - v14) >> 4);
    v26 = v33[3];
    v27[0] = 0;
    v27[1] = v23;
    memset(v28, 0, sizeof(v28));
    std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(v28 + 8, *(&v24 + 1), v25, (v25 - *(&v24 + 1)) >> 4);
    v29 = v26;
    identifierCopy = identifier;
    nodeIdentifierCopy = nodeIdentifier;
    *buf = &v24 + 8;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](buf);
    inserted = degas::Database::insertEdge(self->_database, v27);
    if (inserted)
    {
      v18 = KGLoggingConnection();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = v27[0];
        _os_log_error_impl(&dword_255870000, v18, OS_LOG_TYPE_ERROR, "Error adding edge for identifier %llu", buf, 0xCu);
      }

      if (error)
      {
        if ((inserted - 2) > 9)
        {
          v19 = -1;
        }

        else
        {
          v19 = qword_255972CE0[inserted - 2];
        }

        *error = kg_errorWithCode(v19);
      }
    }

    else if (!propertiesCopy || [(KGDatabase *)self setEdgeProperties:propertiesCopy forIdentifier:v27[0] error:error])
    {
      v20 = v27[0];
LABEL_18:
      *buf = v28 + 8;
      std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](buf);
      goto LABEL_19;
    }

    v20 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_18;
  }

  [(KGDatabase *)self upsertLabels:labelsCopy error:error];
  degas::Bitmap::operator=(&v32, v27);
  *buf = v28;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](buf);
  v14 = v33[0];
  v15 = v33[1];
  if (v33[0] != v33[1])
  {
    v16 = v32;
    goto LABEL_5;
  }

  v20 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_19:
  v27[0] = v33;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v27);

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

- (BOOL)addEdges:(id)edges error:(id *)error
{
  v84 = *MEMORY[0x277D85DE8];
  v69 = 0;
  v70 = 0uLL;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = edges;
  v4 = [obj countByEnumeratingWithState:&v65 objects:v83 count:16];
  if (v4)
  {
    v49 = *v66;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v66 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v65 + 1) + 8 * i);
        v63 = 0u;
        memset(v64, 0, 25);
        labels = [v6 labels];
        v8 = [labels count] == 0;

        if (v8)
        {
          v11 = *(&v64[0] + 1);
          v10 = *&v64[0];
        }

        else
        {
          labels2 = [v6 labels];
          [(KGDatabase *)self upsertLabels:labels2 error:error];
          degas::Bitmap::operator=(&v63, buf);
          v71 = &v59;
          std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v71);

          v11 = *(&v64[0] + 1);
          v10 = *&v64[0];
          if (*&v64[0] == *(&v64[0] + 1))
          {
            *buf = v64;
            std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](buf);

            goto LABEL_34;
          }
        }

        v54 = v63;
        v55 = 0u;
        v56 = 0u;
        std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(&v55 + 8, v10, v11, (v11 - v10) >> 4);
        v57 = BYTE8(v64[1]);
        sourceNode = [v6 sourceNode];
        identifier = [sourceNode identifier];
        targetNode = [v6 targetNode];
        identifier2 = [targetNode identifier];
        *buf = 0;
        *&buf[8] = v54;
        v59 = 0u;
        v60 = 0u;
        std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(&v59 + 8, *(&v55 + 1), v56, (v56 - *(&v55 + 1)) >> 4);
        v61 = v57;
        *&v62 = identifier;
        *(&v62 + 1) = identifier2;

        v71 = &v55 + 1;
        std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v71);
        v16 = v70;
        if (v70 >= *(&v70 + 1))
        {
          v18 = 0x8E38E38E38E38E39 * ((v70 - v69) >> 3);
          v19 = v18 + 1;
          if (v18 + 1 > 0x38E38E38E38E38ELL)
          {
            std::vector<unsigned long long>::__throw_length_error[abi:ne200100]();
          }

          if (0x1C71C71C71C71C72 * ((*(&v70 + 1) - v69) >> 3) > v19)
          {
            v19 = 0x1C71C71C71C71C72 * ((*(&v70 + 1) - v69) >> 3);
          }

          if (0x8E38E38E38E38E39 * ((*(&v70 + 1) - v69) >> 3) >= 0x1C71C71C71C71C7)
          {
            v20 = 0x38E38E38E38E38ELL;
          }

          else
          {
            v20 = v19;
          }

          v74 = &v69;
          if (v20)
          {
            if (v20 <= 0x38E38E38E38E38ELL)
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v21 = 8 * ((v70 - v69) >> 3);
          v71 = 0;
          v72 = v21;
          v73 = v21;
          *v21 = *buf;
          *(v21 + 16) = 0u;
          *(v21 + 32) = 0u;
          std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(72 * v18 + 24, *(&v59 + 1), v60, (v60 - *(&v59 + 1)) >> 4);
          *(v21 + 48) = v61;
          *(v21 + 56) = v62;
          *&v73 = v73 + 72;
          v23 = v69;
          v22 = v70;
          v75 = &v69;
          v76 = &v79;
          v77 = &v80;
          v78 = 0;
          v24 = (v69 + v72 - v70);
          v79 = v24;
          v80 = v24;
          if (v69 != v70)
          {
            v25 = v69 + v72 - v70;
            v26 = v69;
            do
            {
              *v25 = *v26;
              *(v25 + 1) = 0u;
              *(v25 + 2) = 0u;
              std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>((v25 + 24), v26[3], v26[4], (v26[4] - v26[3]) >> 4);
              v25[48] = *(v26 + 48);
              *(v25 + 56) = *(v26 + 7);
              v26 += 9;
              v25 = (v80 + 9);
              v80 += 9;
            }

            while (v26 != v22);
            do
            {
              v81 = (v23 + 3);
              std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v81);
              v23 += 9;
            }

            while (v23 != v22);
          }

          v27 = v69;
          v28 = *(&v70 + 1);
          v69 = v24;
          v48 = v73;
          v70 = v73;
          *&v73 = v27;
          *(&v73 + 1) = v28;
          v71 = v27;
          v72 = v27;
          std::__split_buffer<degas::EdgeCreationRequest>::~__split_buffer(&v71);
          v17 = v48;
        }

        else
        {
          *v70 = *buf;
          *(v16 + 16) = 0u;
          *(v16 + 32) = 0u;
          std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(v16 + 24, *(&v59 + 1), v60, (v60 - *(&v59 + 1)) >> 4);
          *(v16 + 48) = v61;
          *(v16 + 56) = v62;
          v17 = v16 + 72;
        }

        *&v70 = v17;
        v71 = &v59 + 1;
        std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v71);
        *buf = v64;
        std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](buf);
      }

      v4 = [obj countByEnumeratingWithState:&v65 objects:v83 count:16];
    }

    while (v4);
  }

  inserted = degas::Database::insertEdges(self->_database, &v69);
  if (inserted)
  {
    v30 = KGLoggingConnection();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_255870000, v30, OS_LOG_TYPE_ERROR, "Error adding edges", buf, 2u);
    }

    if (error)
    {
      if ((inserted - 2) > 9)
      {
        v31 = -1;
      }

      else
      {
        v31 = qword_255972CE0[inserted - 2];
      }

      kg_errorWithCode(v31);
      *error = v32 = 0;
    }

    else
    {
LABEL_34:
      v32 = 0;
    }
  }

  else
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v35 = obj;
    v36 = [v35 countByEnumeratingWithState:&v50 objects:v82 count:16];
    if (v36)
    {
      v37 = 0;
      v38 = *v51;
      while (2)
      {
        v39 = 0;
        v40 = 9 * v37;
        do
        {
          if (*v51 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v41 = *(*(&v50 + 1) + 8 * v39);
          v42 = v69[v40];
          [v41 resolveIdentifier:v42];
          properties = [v41 properties];
          v44 = [properties mutableCopy];

          [v44 setObject:0 forKeyedSubscript:@"__weight"];
          LOBYTE(v42) = [(KGDatabase *)self setEdgeProperties:v44 forIdentifier:v42 error:error];

          if ((v42 & 1) == 0)
          {
            v32 = 0;
            goto LABEL_46;
          }

          ++v37;
          ++v39;
          v40 += 9;
        }

        while (v36 != v39);
        v36 = [v35 countByEnumeratingWithState:&v50 objects:v82 count:16];
        if (v36)
        {
          continue;
        }

        break;
      }
    }

    v32 = 1;
LABEL_46:
  }

  *buf = &v69;
  std::vector<degas::EdgeCreationRequest>::__destroy_vector::operator()[abi:ne200100](buf);

  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

- (BOOL)setEdgeProperties:(id)properties forIdentifier:(unint64_t)identifier error:(id *)error
{
  propertiesCopy = properties;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x6012000000;
  v26[3] = __Block_byref_object_copy__2286;
  v26[4] = __Block_byref_object_dispose__2287;
  v26[5] = &unk_25598DE97;
  v27 = 0u;
  memset(v28, 0, 25);
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__123;
  v20 = __Block_byref_object_dispose__124;
  v21 = 0;
  v9 = (*(*(self->_database + 52) + 24))(self->_database + 416, identifier);
  *(v23 + 6) = v9;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __52__KGDatabase_setEdgeProperties_forIdentifier_error___block_invoke;
  v15[3] = &unk_2797FEA30;
  v15[4] = self;
  v15[5] = &v16;
  v15[6] = &v22;
  v15[7] = v26;
  v15[8] = identifier;
  [propertiesCopy enumerateKeysAndObjectsUsingBlock:v15];
  v10 = *(v23 + 6);
  if (error && v10)
  {
    v11 = v17[5];
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      if ((v10 - 2) > 9)
      {
        v13 = -1;
      }

      else
      {
        v13 = qword_255972CE0[v10 - 2];
      }

      v12 = kg_errorWithCode(v13);
    }

    *error = v12;
  }

  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(v26, 8);
  v16 = v28;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v16);

  return v10 == 0;
}

void __52__KGDatabase_setEdgeProperties_forIdentifier_error___block_invoke(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [v8 dataType];
  v10 = a1[4];
  v25 = 0;
  v11 = [v10 attributeIdentifierForPropertyName:v7 error:&v25];
  v12 = v25;
  v13 = v25;
  if (!v11)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), v12);
    *a4 = 1;
    *(*(a1[6] + 8) + 24) = 7;
    goto LABEL_18;
  }

  degas::Bitmap::setBit((*(a1[7] + 8) + 48), v11);
  if (v9 <= 1)
  {
    if (v9)
    {
      if (v9 != 1)
      {
        goto LABEL_16;
      }

      v14 = degas::Database::setEdgeAttributeValueUnsigned(*(a1[4] + 8), a1[8], v11, [v8 value]);
    }

    else
    {
      v14 = degas::Database::setEdgeAttributeValue(*(a1[4] + 8), a1[8], v11, [v8 value]);
    }

    goto LABEL_14;
  }

  if (v9 == 2)
  {
    v19 = v8;
    v20 = *(a1[4] + 8);
    v21 = a1[8];
    [v19 value];
    v14 = degas::Database::setEdgeAttributeValue(v20, v21, v11, v22);
LABEL_14:
    *(*(a1[6] + 8) + 24) = v14;
    goto LABEL_15;
  }

  if (v9 != 3)
  {
    goto LABEL_16;
  }

  v15 = v8;
  v16 = *(a1[4] + 8);
  v17 = a1[8];
  v18 = [v15 value];
  std::string::basic_string[abi:ne200100]<0>(__p, [v18 cStringUsingEncoding:4]);
  *(*(a1[6] + 8) + 24) = degas::Database::setEdgeAttributeValue(v16, v17, v11, __p);
  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_15:
LABEL_16:
  if (*(*(a1[6] + 8) + 24))
  {
    *a4 = 1;
  }

LABEL_18:
}

- (unint64_t)addNodeWithLabels:(id)labels properties:(id)properties error:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  labelsCopy = labels;
  propertiesCopy = properties;
  v26 = 0u;
  memset(v27, 0, 25);
  if ([labelsCopy count])
  {
    [(KGDatabase *)self upsertLabels:labelsCopy error:error];
    degas::Bitmap::operator=(&v26, v23);
    *buf = v24;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](buf);
    v11 = *(&v27[0] + 1);
    v10 = *&v27[0];
    if (*&v27[0] == *(&v27[0] + 1))
    {
      v16 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_19;
    }

    v12 = v26;
  }

  else
  {
    v11 = 0;
    v10 = 0;
    v12 = 0;
  }

  v19 = v12;
  v20 = 0u;
  v21 = 0u;
  std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(&v20 + 8, v10, v11, (v11 - v10) >> 4);
  v22 = BYTE8(v27[1]);
  v23[0] = 0;
  v23[1] = v19;
  memset(v24, 0, sizeof(v24));
  std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(v24 + 8, *(&v20 + 1), v21, (v21 - *(&v20 + 1)) >> 4);
  v25 = v22;
  *buf = &v20 + 8;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](buf);
  inserted = degas::Database::insertNode(self->_database, v23);
  if (inserted)
  {
    v14 = KGLoggingConnection();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = v23[0];
      _os_log_error_impl(&dword_255870000, v14, OS_LOG_TYPE_ERROR, "Error adding node for identifier %llu", buf, 0xCu);
    }

    if (error)
    {
      if ((inserted - 2) > 9)
      {
        v15 = -1;
      }

      else
      {
        v15 = qword_255972CE0[inserted - 2];
      }

      *error = kg_errorWithCode(v15);
    }

    v16 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else if ([(KGDatabase *)self setNodeProperties:propertiesCopy forIdentifier:v23[0] error:error])
  {
    v16 = v23[0];
  }

  else
  {
    v16 = 0x7FFFFFFFFFFFFFFFLL;
  }

  *buf = v24 + 8;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](buf);
LABEL_19:
  v23[0] = v27;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v23);

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)addNodes:(id)nodes error:(id *)error
{
  v80 = *MEMORY[0x277D85DE8];
  v65 = 0;
  v66 = 0uLL;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = nodes;
  v4 = [obj countByEnumeratingWithState:&v61 objects:v79 count:16];
  if (v4)
  {
    v5 = v60;
    v46 = *v62;
    v41 = v60;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v62 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v61 + 1) + 8 * i);
        v59 = 0u;
        memset(v60, 0, 25);
        labels = [v7 labels];
        v9 = [labels count] == 0;

        if (v9)
        {
          v12 = *(&v60[0] + 1);
          v11 = *&v60[0];
        }

        else
        {
          labels2 = [v7 labels];
          [(KGDatabase *)self upsertLabels:labels2 error:error];
          degas::Bitmap::operator=(&v59, buf);
          v67 = &v56;
          std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v67);

          v12 = *(&v60[0] + 1);
          v11 = *&v60[0];
          if (*&v60[0] == *(&v60[0] + 1))
          {
            *buf = v5;
            std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](buf);

            goto LABEL_34;
          }
        }

        v51 = v59;
        v52 = 0u;
        v53 = 0u;
        std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(&v52 + 8, v11, v12, (v12 - v11) >> 4);
        v54 = BYTE8(v60[1]);
        *buf = 0;
        *&buf[8] = v51;
        v56 = 0u;
        v57 = 0u;
        std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(&v56 + 8, *(&v52 + 1), v53, (v53 - *(&v52 + 1)) >> 4);
        v58 = v54;
        v67 = &v52 + 1;
        std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v67);
        v13 = v66;
        if (v66 >= *(&v66 + 1))
        {
          v15 = 0x6DB6DB6DB6DB6DB7 * ((v66 - v65) >> 3);
          v16 = v15 + 1;
          if ((v15 + 1) > 0x492492492492492)
          {
            std::vector<unsigned long long>::__throw_length_error[abi:ne200100]();
          }

          if (0xDB6DB6DB6DB6DB6ELL * ((*(&v66 + 1) - v65) >> 3) > v16)
          {
            v16 = 0xDB6DB6DB6DB6DB6ELL * ((*(&v66 + 1) - v65) >> 3);
          }

          if ((0x6DB6DB6DB6DB6DB7 * ((*(&v66 + 1) - v65) >> 3)) >= 0x249249249249249)
          {
            v17 = 0x492492492492492;
          }

          else
          {
            v17 = v16;
          }

          v70 = &v65;
          if (v17)
          {
            if (v17 <= 0x492492492492492)
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v18 = 8 * ((v66 - v65) >> 3);
          v67 = 0;
          v68 = v18;
          v69 = v18;
          *v18 = *buf;
          *(v18 + 16) = 0u;
          *(v18 + 32) = 0u;
          std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(56 * v15 + 24, *(&v56 + 1), v57, (v57 - *(&v56 + 1)) >> 4);
          *(v18 + 48) = v58;
          *&v69 = v69 + 56;
          v19 = v65;
          v20 = v66;
          v71 = &v65;
          v72 = &v75;
          v73 = &v76;
          v74 = 0;
          v21 = (v65 + v68 - v66);
          v75 = v21;
          v76 = v21;
          if (v65 != v66)
          {
            v22 = v65 + v68 - v66;
            v23 = v65;
            do
            {
              *v22 = *v23;
              *(v22 + 1) = 0u;
              *(v22 + 2) = 0u;
              std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>((v22 + 24), v23[3], v23[4], (v23[4] - v23[3]) >> 4);
              v22[48] = *(v23 + 48);
              v23 += 7;
              v22 = (v76 + 7);
              v76 += 7;
            }

            while (v23 != v20);
            do
            {
              v77 = (v19 + 3);
              std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v77);
              v19 += 7;
            }

            while (v19 != v20);
          }

          v24 = v65;
          v25 = *(&v66 + 1);
          v65 = v21;
          v45 = v69;
          v66 = v69;
          *&v69 = v24;
          *(&v69 + 1) = v25;
          v67 = v24;
          v68 = v24;
          std::__split_buffer<degas::NodeCreationRequest>::~__split_buffer(&v67);
          v14 = v45;
          v5 = v41;
        }

        else
        {
          *v66 = *buf;
          *(v13 + 16) = 0u;
          *(v13 + 32) = 0u;
          std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(v13 + 24, *(&v56 + 1), v57, (v57 - *(&v56 + 1)) >> 4);
          *(v13 + 48) = v58;
          v14 = v13 + 56;
        }

        *&v66 = v14;
        v67 = &v56 + 1;
        std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v67);
        *buf = v5;
        std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](buf);
      }

      v4 = [obj countByEnumeratingWithState:&v61 objects:v79 count:16];
    }

    while (v4);
  }

  inserted = degas::Database::insertNodes(self->_database, &v65);
  if (inserted)
  {
    v27 = KGLoggingConnection();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_255870000, v27, OS_LOG_TYPE_ERROR, "Error adding nodes", buf, 2u);
    }

    if (error)
    {
      if ((inserted - 2) > 9)
      {
        v28 = -1;
      }

      else
      {
        v28 = qword_255972CE0[inserted - 2];
      }

      kg_errorWithCode(v28);
      *error = v29 = 0;
    }

    else
    {
LABEL_34:
      v29 = 0;
    }
  }

  else
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v32 = obj;
    v33 = [v32 countByEnumeratingWithState:&v47 objects:v78 count:16];
    if (v33)
    {
      v34 = 0;
      v35 = *v48;
      while (2)
      {
        v36 = 0;
        v37 = 7 * v34;
        do
        {
          if (*v48 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v38 = *(*(&v47 + 1) + 8 * v36);
          v39 = v65[v37];
          [v38 resolveIdentifier:v39];
          properties = [v38 properties];
          LOBYTE(v39) = [(KGDatabase *)self setNodeProperties:properties forIdentifier:v39 error:error];

          if ((v39 & 1) == 0)
          {
            v29 = 0;
            goto LABEL_46;
          }

          ++v34;
          ++v36;
          v37 += 7;
        }

        while (v33 != v36);
        v33 = [v32 countByEnumeratingWithState:&v47 objects:v78 count:16];
        if (v33)
        {
          continue;
        }

        break;
      }
    }

    v29 = 1;
LABEL_46:
  }

  *buf = &v65;
  std::vector<degas::NodeCreationRequest>::__destroy_vector::operator()[abi:ne200100](buf);

  v30 = *MEMORY[0x277D85DE8];
  return v29;
}

- (BOOL)setNodeProperties:(id)properties forIdentifier:(unint64_t)identifier error:(id *)error
{
  propertiesCopy = properties;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x6012000000;
  v25[3] = __Block_byref_object_copy__2286;
  v25[4] = __Block_byref_object_dispose__2287;
  v25[5] = &unk_25598DE97;
  v26 = 0u;
  memset(v27, 0, 25);
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__123;
  v19 = __Block_byref_object_dispose__124;
  v20 = 0;
  (*(*(self->_database + 45) + 24))(self->_database + 360, identifier);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __52__KGDatabase_setNodeProperties_forIdentifier_error___block_invoke;
  v14[3] = &unk_2797FEA30;
  v14[4] = self;
  v14[5] = &v21;
  v14[6] = &v15;
  v14[7] = v25;
  v14[8] = identifier;
  [propertiesCopy enumerateKeysAndObjectsUsingBlock:v14];
  v9 = *(v22 + 6);
  if (error && v9)
  {
    v10 = v16[5];
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      if ((v9 - 2) > 9)
      {
        v12 = -1;
      }

      else
      {
        v12 = qword_255972CE0[v9 - 2];
      }

      v11 = kg_errorWithCode(v12);
    }

    *error = v11;
  }

  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(v25, 8);
  v15 = v27;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v15);

  return v9 == 0;
}

void __52__KGDatabase_setNodeProperties_forIdentifier_error___block_invoke(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [v8 dataType];
  v10 = a1[4];
  v25 = 0;
  v11 = [v10 attributeIdentifierForPropertyName:v7 error:&v25];
  v12 = v25;
  v13 = v25;
  if (!v11)
  {
    *a4 = 1;
    *(*(a1[5] + 8) + 24) = 7;
    objc_storeStrong((*(a1[6] + 8) + 40), v12);
    goto LABEL_18;
  }

  degas::Bitmap::setBit((*(a1[7] + 8) + 48), v11);
  if (v9 <= 1)
  {
    if (v9)
    {
      if (v9 != 1)
      {
        goto LABEL_16;
      }

      v14 = degas::Database::setNodeAttributeValueUnsigned(*(a1[4] + 8), a1[8], v11, [v8 value]);
    }

    else
    {
      v14 = degas::Database::setNodeAttributeValue(*(a1[4] + 8), a1[8], v11, [v8 value]);
    }

    goto LABEL_14;
  }

  if (v9 == 2)
  {
    v19 = v8;
    v20 = *(a1[4] + 8);
    v21 = a1[8];
    [v19 value];
    v14 = degas::Database::setNodeAttributeValue(v20, v21, v11, v22);
LABEL_14:
    *(*(a1[5] + 8) + 24) = v14;
    goto LABEL_15;
  }

  if (v9 != 3)
  {
    goto LABEL_16;
  }

  v15 = v8;
  v16 = *(a1[4] + 8);
  v17 = a1[8];
  v18 = [v15 value];
  std::string::basic_string[abi:ne200100]<0>(__p, [v18 cStringUsingEncoding:4]);
  *(*(a1[5] + 8) + 24) = degas::Database::setNodeAttributeValue(v16, v17, v11, __p);
  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_15:
LABEL_16:
  if (*(*(a1[5] + 8) + 24))
  {
    *a4 = 1;
  }

LABEL_18:
}

- (void)_enumeratePropertiesWithCursor:(void *)cursor withBlock:(id)block
{
  blockCopy = block;
  v18 = 0;
  while (degas::Statement::next(*cursor) == 1)
  {
    v6 = sqlite3_column_int64(**cursor, 5);
    if (v6 > 2)
    {
      if (v6 == 3)
      {
        __p[0] = 0;
        __p[1] = 0;
        v17 = 0;
        degas::Statement::stringColumnValue(*cursor, 4, __p);
        v11 = objc_alloc(MEMORY[0x277CCACA8]);
        if (v17 >= 0)
        {
          v12 = __p;
        }

        else
        {
          v12 = __p[0];
        }

        v13 = [v11 initWithUTF8String:v12];
        v14 = [[KGStringPropertyValue alloc] initWithValue:v13];
        v15 = sqlite3_column_int64(**cursor, 0);
        blockCopy[2](blockCopy, v15, v14, &v18);

        if (SHIBYTE(v17) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_12;
      }

      if (v6 == 4)
      {
        v7 = [[KGUInt64PropertyValue alloc] initWithValue:sqlite3_column_int64(**cursor, 2)];
        v9 = sqlite3_column_int64(**cursor, 0);
        blockCopy[2](blockCopy, v9, v7, &v18);
        goto LABEL_11;
      }
    }

    else
    {
      if (v6 == 1)
      {
        v7 = [[KGInt64PropertyValue alloc] initWithValue:sqlite3_column_int64(**cursor, 2)];
        v10 = sqlite3_column_int64(**cursor, 0);
        blockCopy[2](blockCopy, v10, v7, &v18);
        goto LABEL_11;
      }

      if (v6 == 2)
      {
        v7 = [[KGDoublePropertyValue alloc] initWithValue:sqlite3_column_double(**cursor, 3)];
        v8 = sqlite3_column_int64(**cursor, 0);
        blockCopy[2](blockCopy, v8, v7, &v18);
LABEL_11:
      }
    }

LABEL_12:
    if (v18)
    {
      break;
    }
  }
}

- (void)_enumeratePropertiesForCursor:(void *)cursor block:(id)block
{
  blockCopy = block;
  v7 = 0;
  v8 = 0;
  v14 = 0;
  while (degas::Statement::next(*cursor) == 1)
  {
    v9 = sqlite3_column_int64(**cursor, 0);
    if (v9 != v8)
    {
      if (v7)
      {
        blockCopy[2](blockCopy, v8, v7, &v14);
      }

      v10 = objc_alloc_init(MEMORY[0x277CBEB38]);

      v7 = v10;
      v8 = v9;
    }

    v11 = sqlite3_column_int64(**cursor, 1);
    v12 = [(KGDatabase *)self propertyValueForCursor:cursor];
    if (v12)
    {
      v13 = [(KGDatabase *)self propertyNameForAttrIdentifier:v11];
      if (v13)
      {
        [v7 setObject:v12 forKeyedSubscript:v13];
      }
    }
  }

  if (v7)
  {
    blockCopy[2](blockCopy, v8, v7, &v14);
  }
}

- (id)propertyValueForCursor:(void *)cursor
{
  v4 = sqlite3_column_int64(**cursor, 5);
  v5 = 0;
  if (v4 <= 1)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        goto LABEL_20;
      }

      v6 = sqlite3_column_int64(**cursor, 2);
      v7 = KGInt64PropertyValue;
      goto LABEL_9;
    }

    v12 = KGLoggingConnection();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p[0]) = 0;
      _os_log_error_impl(&dword_255870000, v12, OS_LOG_TYPE_ERROR, "unsupported data type for attribute value", __p, 2u);
    }

    v5 = 0;
  }

  else
  {
    if (v4 == 2)
    {
      v8 = [[KGDoublePropertyValue alloc] initWithValue:sqlite3_column_double(**cursor, 3)];
      goto LABEL_11;
    }

    if (v4 != 3)
    {
      if (v4 != 4)
      {
        goto LABEL_20;
      }

      v6 = sqlite3_column_int64(**cursor, 2);
      v7 = KGUInt64PropertyValue;
LABEL_9:
      v8 = [[v7 alloc] initWithValue:v6];
LABEL_11:
      v5 = v8;
      goto LABEL_20;
    }

    __p[0] = 0;
    __p[1] = 0;
    v15 = 0;
    degas::Statement::stringColumnValue(*cursor, 4, __p);
    v9 = objc_alloc(MEMORY[0x277CCACA8]);
    if (v15 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    v11 = [v9 initWithUTF8String:v10];
    v5 = [[KGStringPropertyValue alloc] initWithValue:v11];

    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_20:

  return v5;
}

- (void)_enumerateEdgesWithEdgeCursor:(void *)cursor propertiesCursor:(void *)propertiesCursor block:(id)block
{
  blockCopy = block;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = objc_autoreleasePoolPush();
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v18[3] = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__KGDatabase__enumerateEdgesWithEdgeCursor_propertiesCursor_block___block_invoke;
  v12[3] = &unk_2797FE990;
  v12[4] = self;
  cursorCopy = cursor;
  v9 = blockCopy;
  v13 = v9;
  v14 = &v19;
  v15 = v18;
  v16 = &v23;
  [(KGDatabase *)self _enumeratePropertiesForCursor:propertiesCursor block:v12];
  if ((v20[3] & 1) == 0)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __67__KGDatabase__enumerateEdgesWithEdgeCursor_propertiesCursor_block___block_invoke_3;
    v10[3] = &unk_2797FEA08;
    v11 = v9;
    [(KGDatabase *)self _enumerateEdgeTableWithEdgeCursor:cursor block:v10];
  }

  objc_autoreleasePoolPop(v24[3]);

  _Block_object_dispose(v18, 8);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
}

void __67__KGDatabase__enumerateEdgesWithEdgeCursor_propertiesCursor_block___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  v8 = *(a1 + 32);
  v9 = *(a1 + 72);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __67__KGDatabase__enumerateEdgesWithEdgeCursor_propertiesCursor_block___block_invoke_2;
  v18 = &unk_2797FE9E0;
  v22 = a2;
  v10 = v7;
  v19 = v10;
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v20 = v11;
  v21 = v12;
  [v8 _enumerateEdgeTableWithEdgeCursor:v9 block:&v15];
  if (([*(a1 + 32) noFatalError] & 1) == 0)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  *a4 = *(*(*(a1 + 48) + 8) + 24);
  v13 = *(*(a1 + 56) + 8);
  v14 = *(v13 + 24) + 1;
  *(v13 + 24) = v14;
  if (__ROR8__(0x8F5C28F5C28F5C29 * v14, 2) <= 0x28F5C28F5C28F5CuLL)
  {
    objc_autoreleasePoolPop(*(*(*(a1 + 64) + 8) + 24));
    *(*(*(a1 + 64) + 8) + 24) = objc_autoreleasePoolPush();
  }
}

void __67__KGDatabase__enumerateEdgesWithEdgeCursor_propertiesCursor_block___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, BOOL *a6)
{
  v12 = a3;
  if (*(a1 + 56) == a2)
  {
    v9 = *(a1 + 32);
  }

  else
  {
    v9 = MEMORY[0x277CBEC10];
  }

  v10 = *(*(a1 + 48) + 8);
  (*(*(a1 + 40) + 16))();
  v11 = (*(*(*(a1 + 48) + 8) + 24) & 1) != 0 || *(a1 + 56) == a2;
  *a6 = v11;
}

- (void)_enumerateNodesWithNodeCursor:(void *)cursor propertiesCursor:(void *)propertiesCursor block:(id)block
{
  blockCopy = block;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = objc_autoreleasePoolPush();
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v18[3] = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__KGDatabase__enumerateNodesWithNodeCursor_propertiesCursor_block___block_invoke;
  v12[3] = &unk_2797FE990;
  v12[4] = self;
  cursorCopy = cursor;
  v9 = blockCopy;
  v13 = v9;
  v14 = &v19;
  v15 = v18;
  v16 = &v23;
  [(KGDatabase *)self _enumeratePropertiesForCursor:propertiesCursor block:v12];
  if ((v20[3] & 1) == 0)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __67__KGDatabase__enumerateNodesWithNodeCursor_propertiesCursor_block___block_invoke_3;
    v10[3] = &unk_2797FE9B8;
    v11 = v9;
    [(KGDatabase *)self _enumerateNodeTableWithNodeCursor:cursor block:v10];
  }

  objc_autoreleasePoolPop(v24[3]);

  _Block_object_dispose(v18, 8);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
}

void __67__KGDatabase__enumerateNodesWithNodeCursor_propertiesCursor_block___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  v8 = *(a1 + 32);
  v9 = *(a1 + 72);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __67__KGDatabase__enumerateNodesWithNodeCursor_propertiesCursor_block___block_invoke_2;
  v18 = &unk_2797FE968;
  v22 = a2;
  v10 = v7;
  v19 = v10;
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v20 = v11;
  v21 = v12;
  [v8 _enumerateNodeTableWithNodeCursor:v9 block:&v15];
  if (([*(a1 + 32) noFatalError] & 1) == 0)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  *a4 = *(*(*(a1 + 48) + 8) + 24);
  v13 = *(*(a1 + 56) + 8);
  v14 = *(v13 + 24) + 1;
  *(v13 + 24) = v14;
  if (__ROR8__(0x8F5C28F5C28F5C29 * v14, 2) <= 0x28F5C28F5C28F5CuLL)
  {
    objc_autoreleasePoolPop(*(*(*(a1 + 64) + 8) + 24));
    *(*(*(a1 + 64) + 8) + 24) = objc_autoreleasePoolPush();
  }
}

void __67__KGDatabase__enumerateNodesWithNodeCursor_propertiesCursor_block___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, BOOL *a4)
{
  v10 = a3;
  if (*(a1 + 56) == a2)
  {
    v7 = *(a1 + 32);
  }

  else
  {
    v7 = MEMORY[0x277CBEC10];
  }

  v8 = *(*(a1 + 48) + 8);
  (*(*(a1 + 40) + 16))();
  v9 = (*(*(*(a1 + 48) + 8) + 24) & 1) != 0 || *(a1 + 56) == a2;
  *a4 = v9;
}

- (void)_enumerateEdgeTableWithEdgeCursor:(void *)cursor block:(id)block
{
  v47 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v33 = 0;
  do
  {
    if (degas::Statement::next(*cursor) != 1)
    {
      break;
    }

    v6 = sqlite3_column_int64(**cursor, 0);
    v31 = 0u;
    memset(v32, 0, 25);
    degas::Statement::bitmapColumnValue(*cursor, 1, &v31);
    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    degas::Bitmap::begin(&v31, &v28);
    v8 = v32[1];
    while (1)
    {
      v9 = v29;
      v10 = v28 == &v31 && v29 == -1;
      if (v10 && v30 == v8)
      {
        break;
      }

      nameCache = self->_nameCache;
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v29];
      v14 = [(KGDatabaseNameCache *)nameCache labelNameForIdentifier:v13 database:self];

      if (!v14)
      {
        v15 = KGLoggingConnection();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
        {
          degas::Bitmap::description(__p, &v31);
          v19 = __p;
          if (v27 < 0)
          {
            v19 = __p[0];
          }

          database = self->_database;
          v21 = database;
          if (database[23] < 0)
          {
            v21 = *database;
          }

          v10 = database[32] == 0;
          v22 = "false";
          if (!v10)
          {
            v22 = "true";
          }

          databaseStatus = self->_databaseStatus;
          *buf = 134219522;
          *&buf[4] = v9;
          v35 = 2048;
          v36 = v6;
          v37 = 2112;
          v38 = v7;
          v39 = 2080;
          v40 = v19;
          v41 = 2080;
          v42 = v21;
          v43 = 2080;
          v44 = v22;
          v45 = 2048;
          v46 = databaseStatus;
          _os_log_fault_impl(&dword_255870000, v15, OS_LOG_TYPE_FAULT, "reading edge with unrecognised label identifier %lld, edge identifier %lld, labels %@, labels description %s with database url=%s, readonly=%s, database status=%ld", buf, 0x48u);
          if (v27 < 0)
          {
            operator delete(__p[0]);
          }
        }

        [(KGDatabase *)self setFatalError:@"missing label"];
        v33 = 1;
        break;
      }

      [v7 addObject:v14];

      degas::Bitmap::iterator::operator++(&v28);
    }

    v16 = sqlite3_column_int64(**cursor, 2);
    v17 = sqlite3_column_int64(**cursor, 3);
    if ([(KGDatabase *)self noFatalError])
    {
      blockCopy[2](blockCopy, v6, v7, v16, v17, &v33);
    }

    v18 = v33;

    *buf = v32;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](buf);
  }

  while ((v18 & 1) == 0);

  v24 = *MEMORY[0x277D85DE8];
}

- (void)enumeratePropertyValuesForEdgesWithIdentifiers:(id)identifiers propertyName:(id)name withBlock:(id)block
{
  blockCopy = block;
  [(KGDatabase *)self edgeAttributeValueCursorWithIdentifiers:identifiers propertyName:name];
  [(KGDatabase *)self _enumeratePropertiesWithCursor:v9 withBlock:blockCopy];
  degas::Cursor::~Cursor(v9);
}

- (AttributeValueCursor)edgeAttributeValueCursorWithIdentifiers:(id)identifiers propertyName:(id)name
{
  v7 = v4;
  v24 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  nameCopy = name;
  v19 = 0;
  v10 = [(KGDatabase *)self attributeIdentifierForPropertyName:nameCopy error:&v19];
  v11 = v19;
  v12 = v11;
  if (!v10 && v11)
  {
    v13 = KGLoggingConnection();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v21 = nameCopy;
      v22 = 2112;
      v23 = v12;
      _os_log_error_impl(&dword_255870000, v13, OS_LOG_TYPE_ERROR, "error looking up attribute by property name %@, error=%@", buf, 0x16u);
    }
  }

  v14 = degas::AttributeValueTable::prepareStatementToReadByBitmapAndAttrIdIdentifier((self->_database + 416), [identifiersCopy bitmap], v10);
  v15 = v14[1];
  *v7 = *v14;
  v7[1] = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(v15 + 1, 1uLL, memory_order_relaxed);
  }

  v18 = *MEMORY[0x277D85DE8];
  result.var0.var1 = v17;
  result.var0.var0 = v16;
  return result;
}

- (AttributeValueCursor)tombstoneEdgeAttributeValueCursorWithIdentifiers:(id)identifiers
{
  v5 = v3;
  identifiersCopy = identifiers;
  v11 = identifiersCopy;
  if (identifiersCopy)
  {
    if ([identifiersCopy count] == 1)
    {
      degas::AttributeValueCursor::AttributeValueCursor(v5, [v11 firstElement], (self->_database + 976));
    }

    else
    {
      degas::AttributeValueCursor::AttributeValueCursor(v5, [v11 bitmap], (self->_database + 976));
    }
  }

  else
  {
    AllStatement = degas::AttributeValueTable::readAllStatement((self->_database + 976));
    v8 = AllStatement[1];
    *v5 = *AllStatement;
    v5[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
    }
  }

  result.var0.var1 = v10;
  result.var0.var0 = v9;
  return result;
}

- (AttributeValueCursor)edgeAttributeValueCursorWithIdentifiers:(id)identifiers
{
  v5 = v3;
  identifiersCopy = identifiers;
  v11 = identifiersCopy;
  if (identifiersCopy)
  {
    if ([identifiersCopy count] == 1)
    {
      degas::AttributeValueCursor::AttributeValueCursor(v5, [v11 firstElement], (self->_database + 416));
    }

    else
    {
      degas::AttributeValueCursor::AttributeValueCursor(v5, [v11 bitmap], (self->_database + 416));
    }
  }

  else
  {
    AllStatement = degas::AttributeValueTable::readAllStatement((self->_database + 416));
    v8 = AllStatement[1];
    *v5 = *AllStatement;
    v5[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
    }
  }

  result.var0.var1 = v10;
  result.var0.var0 = v9;
  return result;
}

- (EdgeCursor)tombstoneEdgeCursorWithIdentifiers:(id)identifiers
{
  v5 = v3;
  identifiersCopy = identifiers;
  degas::EdgeCursor::EdgeCursor(v5);
  if (identifiersCopy)
  {
    if ([identifiersCopy count] == 1)
    {
      degas::EdgeCursor::setForIdentifier(v5, [identifiersCopy firstElement], (self->_database + 864));
    }

    else
    {
      degas::EdgeCursor::setForIdentifiers(v5, [identifiersCopy bitmap], (self->_database + 864));
    }
  }

  else
  {
    degas::EdgeCursor::setForSelectAll(v5, (self->_database + 864));
  }

  result.var0.var1 = v7;
  result.var0.var0 = v6;
  return result;
}

- (EdgeCursor)edgeCursorWithIdentifiers:(id)identifiers
{
  v5 = v3;
  identifiersCopy = identifiers;
  degas::EdgeCursor::EdgeCursor(v5);
  if (identifiersCopy)
  {
    if ([identifiersCopy count] == 1)
    {
      degas::EdgeCursor::setForIdentifier(v5, [identifiersCopy firstElement], (self->_database + 248));
    }

    else
    {
      degas::EdgeCursor::setForIdentifiers(v5, [identifiersCopy bitmap], (self->_database + 248));
    }
  }

  else
  {
    degas::EdgeCursor::setForSelectAll(v5, (self->_database + 248));
  }

  result.var0.var1 = v7;
  result.var0.var0 = v6;
  return result;
}

- (void)_enumerateNodeTableWithNodeCursor:(void *)cursor block:(id)block
{
  v47 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v33 = 0;
  *&v6 = 134219522;
  v24 = v6;
  do
  {
    if (degas::Statement::next(*cursor) != 1)
    {
      break;
    }

    v7 = sqlite3_column_int64(**cursor, 0);
    v31 = 0u;
    memset(v32, 0, 25);
    degas::Statement::bitmapColumnValue(*cursor, 1, &v31);
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    degas::Bitmap::begin(&v31, &v28);
    v9 = v32[1];
    while (1)
    {
      v10 = v29;
      v11 = v28 == &v31 && v29 == -1;
      if (v11 && v30 == v9)
      {
        break;
      }

      nameCache = self->_nameCache;
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v29];
      v15 = [(KGDatabaseNameCache *)nameCache labelNameForIdentifier:v14 database:self];

      if (!v15)
      {
        v16 = KGLoggingConnection();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          degas::Bitmap::description(__p, &v31);
          v18 = __p;
          if (v27 < 0)
          {
            v18 = __p[0];
          }

          database = self->_database;
          v20 = database;
          if (database[23] < 0)
          {
            v20 = *database;
          }

          v11 = database[32] == 0;
          v21 = "false";
          if (!v11)
          {
            v21 = "true";
          }

          databaseStatus = self->_databaseStatus;
          *buf = v24;
          *&buf[4] = v10;
          v35 = 2048;
          v36 = v7;
          v37 = 2112;
          v38 = v8;
          v39 = 2080;
          v40 = v18;
          v41 = 2080;
          v42 = v20;
          v43 = 2080;
          v44 = v21;
          v45 = 2048;
          v46 = databaseStatus;
          _os_log_fault_impl(&dword_255870000, v16, OS_LOG_TYPE_FAULT, "reading node with unrecognised label identifier %lld, node identifier %lld, labels %@, labels description %s database url=%s, readonly=%s, database status=%ld", buf, 0x48u);
          if (v27 < 0)
          {
            operator delete(__p[0]);
          }
        }

        [(KGDatabase *)self setFatalError:@"missing label"];
        v33 = 1;
        break;
      }

      [v8 addObject:v15];

      degas::Bitmap::iterator::operator++(&v28);
    }

    if ([(KGDatabase *)self noFatalError])
    {
      blockCopy[2](blockCopy, v7, v8, &v33);
    }

    v17 = v33;

    *buf = v32;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](buf);
  }

  while ((v17 & 1) == 0);

  v23 = *MEMORY[0x277D85DE8];
}

- (void)enumeratePropertyValuesForNodesWithIdentifiers:(id)identifiers propertyName:(id)name withBlock:(id)block
{
  blockCopy = block;
  [(KGDatabase *)self nodeAttributeValueCursorWithIdentifiers:identifiers propertyName:name];
  [(KGDatabase *)self _enumeratePropertiesWithCursor:v9 withBlock:blockCopy];
  degas::Cursor::~Cursor(v9);
}

- (AttributeValueCursor)nodeAttributeValueCursorWithIdentifiers:(id)identifiers propertyName:(id)name
{
  v7 = v4;
  v24 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  nameCopy = name;
  v19 = 0;
  v10 = [(KGDatabase *)self attributeIdentifierForPropertyName:nameCopy error:&v19];
  v11 = v19;
  v12 = v11;
  if (!v10 && v11)
  {
    v13 = KGLoggingConnection();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v21 = nameCopy;
      v22 = 2112;
      v23 = v12;
      _os_log_error_impl(&dword_255870000, v13, OS_LOG_TYPE_ERROR, "error looking up attribute by property name %@, error=%@", buf, 0x16u);
    }
  }

  v14 = degas::AttributeValueTable::prepareStatementToReadByBitmapAndAttrIdIdentifier((self->_database + 360), [identifiersCopy bitmap], v10);
  v15 = v14[1];
  *v7 = *v14;
  v7[1] = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(v15 + 1, 1uLL, memory_order_relaxed);
  }

  v18 = *MEMORY[0x277D85DE8];
  result.var0.var1 = v17;
  result.var0.var0 = v16;
  return result;
}

- (AttributeValueCursor)tombstoneNodeAttributeValueCursorWithIdentifiers:(id)identifiers
{
  v5 = v3;
  identifiersCopy = identifiers;
  v11 = identifiersCopy;
  if (identifiersCopy)
  {
    if ([identifiersCopy count] == 1)
    {
      degas::AttributeValueCursor::AttributeValueCursor(v5, [v11 firstElement], (self->_database + 920));
    }

    else
    {
      degas::AttributeValueCursor::AttributeValueCursor(v5, [v11 bitmap], (self->_database + 920));
    }
  }

  else
  {
    AllStatement = degas::AttributeValueTable::readAllStatement((self->_database + 360));
    v8 = AllStatement[1];
    *v5 = *AllStatement;
    v5[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
    }
  }

  result.var0.var1 = v10;
  result.var0.var0 = v9;
  return result;
}

- (AttributeValueCursor)nodeAttributeValueCursorWithIdentifiers:(id)identifiers
{
  v5 = v3;
  identifiersCopy = identifiers;
  v11 = identifiersCopy;
  if (identifiersCopy)
  {
    if ([identifiersCopy count] == 1)
    {
      degas::AttributeValueCursor::AttributeValueCursor(v5, [v11 firstElement], (self->_database + 360));
    }

    else
    {
      degas::AttributeValueCursor::AttributeValueCursor(v5, [v11 bitmap], (self->_database + 360));
    }
  }

  else
  {
    AllStatement = degas::AttributeValueTable::readAllStatement((self->_database + 360));
    v8 = AllStatement[1];
    *v5 = *AllStatement;
    v5[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
    }
  }

  result.var0.var1 = v10;
  result.var0.var0 = v9;
  return result;
}

- (NodeCursor)tombstoneNodeCursorWithIdentifiers:(id)identifiers
{
  v5 = v3;
  identifiersCopy = identifiers;
  degas::NodeCursor::NodeCursor(v5);
  if (identifiersCopy)
  {
    if ([identifiersCopy count] == 1)
    {
      degas::NodeCursor::setForIdentifier(v5, [identifiersCopy firstElement], (self->_database + 808));
    }

    else
    {
      degas::NodeCursor::setForIdentifiers(v5, [identifiersCopy bitmap], (self->_database + 808));
    }
  }

  else
  {
    degas::NodeCursor::setForSelectAll(v5, (self->_database + 808));
  }

  result.var0.var1 = v7;
  result.var0.var0 = v6;
  return result;
}

- (NodeCursor)nodeCursorWithIdentifiers:(id)identifiers
{
  v5 = v3;
  identifiersCopy = identifiers;
  degas::NodeCursor::NodeCursor(v5);
  if (identifiersCopy)
  {
    if ([identifiersCopy count] == 1)
    {
      degas::NodeCursor::setForIdentifier(v5, [identifiersCopy firstElement], (self->_database + 192));
    }

    else
    {
      degas::NodeCursor::setForIdentifiers(v5, [identifiersCopy bitmap], (self->_database + 192));
    }
  }

  else
  {
    degas::NodeCursor::setForSelectAll(v5, (self->_database + 192));
  }

  result.var0.var1 = v7;
  result.var0.var0 = v6;
  return result;
}

- (void)enumerateSourceAndTargetIdentifiersWithEdgeIdentifiers:(id)identifiers block:(id)block
{
  blockCopy = block;
  [(KGDatabase *)self edgeCursorWithIdentifiers:identifiers];
  v10 = 0;
  do
  {
    if (degas::Statement::next(v11) != 1)
    {
      break;
    }

    v7 = sqlite3_column_int64(*v11, 0);
    v8 = sqlite3_column_int64(*v11, 2);
    v9 = sqlite3_column_int64(*v11, 3);
    blockCopy[2](blockCopy, v7, v8, v9, &v10);
  }

  while ((v10 & 1) == 0);
  degas::Cursor::~Cursor(&v11);
}

- (void)enumerateTombstoneEdgesWithIdentifiers:(id)identifiers block:(id)block
{
  identifiersCopy = identifiers;
  blockCopy = block;
  [(KGDatabase *)self tombstoneEdgeCursorWithIdentifiers:identifiersCopy];
  [(KGDatabase *)self tombstoneEdgeAttributeValueCursorWithIdentifiers:identifiersCopy];
  [(KGDatabase *)self _enumerateEdgesWithEdgeCursor:v9 propertiesCursor:v8 block:blockCopy];
  degas::Cursor::~Cursor(v8);
  degas::Cursor::~Cursor(v9);
}

- (void)enumerateTombstoneNodesWithIdentifiers:(id)identifiers block:(id)block
{
  identifiersCopy = identifiers;
  blockCopy = block;
  [(KGDatabase *)self tombstoneNodeCursorWithIdentifiers:identifiersCopy];
  [(KGDatabase *)self tombstoneNodeAttributeValueCursorWithIdentifiers:identifiersCopy];
  [(KGDatabase *)self _enumerateNodesWithNodeCursor:v9 propertiesCursor:v8 block:blockCopy];
  degas::Cursor::~Cursor(v8);
  degas::Cursor::~Cursor(v9);
}

- (void)enumerateEdgesWithIdentifiers:(id)identifiers block:(id)block
{
  identifiersCopy = identifiers;
  blockCopy = block;
  [(KGDatabase *)self edgeCursorWithIdentifiers:identifiersCopy];
  [(KGDatabase *)self edgeAttributeValueCursorWithIdentifiers:identifiersCopy];
  [(KGDatabase *)self _enumerateEdgesWithEdgeCursor:v9 propertiesCursor:v8 block:blockCopy];
  degas::Cursor::~Cursor(v8);
  degas::Cursor::~Cursor(v9);
}

- (void)enumerateNodesWithIdentifiers:(id)identifiers block:(id)block
{
  identifiersCopy = identifiers;
  blockCopy = block;
  [(KGDatabase *)self nodeCursorWithIdentifiers:identifiersCopy];
  [(KGDatabase *)self nodeAttributeValueCursorWithIdentifiers:identifiersCopy];
  [(KGDatabase *)self _enumerateNodesWithNodeCursor:v9 propertiesCursor:v8 block:blockCopy];
  degas::Cursor::~Cursor(v8);
  degas::Cursor::~Cursor(v9);
}

- (int)degasEdgeDirectionFromKG:(unint64_t)g
{
  v8 = *MEMORY[0x277D85DE8];
  if (g - 1 >= 3)
  {
    gCopy = g;
    v5 = KGLoggingConnection();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7[0] = 67109120;
      v7[1] = gCopy;
      _os_log_error_impl(&dword_255870000, v5, OS_LOG_TYPE_ERROR, "invalid edge direction: %d", v7, 8u);
    }

    result = 0;
  }

  else
  {
    result = 3 - g;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)propertyNameForAttrIdentifier:(unint64_t)identifier
{
  nameCache = self->_nameCache;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:identifier];
  v6 = [(KGDatabaseNameCache *)nameCache propertyNameForIdentifier:v5 database:self];

  return v6;
}

- (unint64_t)attributeIdentifierForPropertyName:(id)name error:(id *)error
{
  v4 = [(KGDatabaseNameCache *)self->_nameCache attrIdentifierForPropertyName:name database:self updating:1 error:error];
  v5 = v4;
  if (v4)
  {
    unsignedIntegerValue = [v4 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (unint64_t)insertNewProperty:(id)property error:(id *)error
{
  v15 = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  stringNSToStd(__p, propertyCopy);
  database = self->_database;
  if (*(database + 32))
  {
LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  *buf = 0;
  v7 = degas::AttributeTable::insert(database + 38, buf, __p);
  if (v7)
  {
    if (v7 != 8)
    {
      v8 = KGLoggingConnection();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = propertyCopy;
        _os_log_error_impl(&dword_255870000, v8, OS_LOG_TYPE_ERROR, "failed to create new attribute %@", buf, 0xCu);
      }
    }

    goto LABEL_7;
  }

  v9 = *buf;
LABEL_8:
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (NSUUID)graphIdentifier
{
  v15 = *MEMORY[0x277D85DE8];
  v11[0] = 0;
  v11[1] = 0;
  v12 = 0;
  v3 = degas::Database::metadataValue(self->_database, 2, v11);
  v4 = v3;
  if (v3)
  {
    if (v3 == 2)
    {
      v5 = objc_alloc_init(MEMORY[0x277CCAD78]);
      uUIDString = [v5 UUIDString];
      stringNSToStd(__p, uUIDString);
      database = self->_database;
      if ((database[32] & 1) == 0)
      {
        degas::MetadataTable::insertOrUpdate((database + 136), 2, __p);
      }

      if (v14 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      uUIDString = KGLoggingConnection();
      if (os_log_type_enabled(uUIDString, OS_LOG_TYPE_ERROR))
      {
        LODWORD(__p[0]) = 67109120;
        HIDWORD(__p[0]) = v4;
        _os_log_error_impl(&dword_255870000, uUIDString, OS_LOG_TYPE_ERROR, "failed reading graph identifier metadata rc=%d", __p, 8u);
      }

      v5 = 0;
    }
  }

  else
  {
    if (v12 >= 0)
    {
      v8 = v11;
    }

    else
    {
      v8 = v11[0];
    }

    uUIDString = [MEMORY[0x277CCACA8] stringWithUTF8String:v8];
    v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:uUIDString];
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11[0]);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)setGraphVersion:(unint64_t)version
{
  database = self->_database;
  if ((database[32] & 1) == 0)
  {
    degas::MetadataTable::insertOrUpdate((database + 136), 1, version);
  }
}

- (unint64_t)graphVersion
{
  v10 = *MEMORY[0x277D85DE8];
  v7 = 0;
  v2 = degas::Database::metadataValue(self->_database, 1, &v7);
  if (v2 == 2)
  {
LABEL_7:
    result = 0;
    goto LABEL_8;
  }

  v3 = v2;
  if (v2)
  {
    v5 = KGLoggingConnection();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v9 = v3;
      _os_log_error_impl(&dword_255870000, v5, OS_LOG_TYPE_ERROR, "failed reading graph version metadata rc=%d", buf, 8u);
    }

    goto LABEL_7;
  }

  result = v7;
LABEL_8:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)labelsOfEdgesForIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v12 = 0u;
  memset(v13, 0, 25);
  degas::EdgeCursor::EdgeCursor(v11);
  degas::EdgeCursor::setForIdentifiers(v11, [identifiersCopy bitmap], (self->_database + 248));
  while (degas::Statement::next(v11[0]) == 1)
  {
    v9 = 0u;
    memset(v10, 0, 25);
    degas::Statement::bitmapColumnValue(v11[0], 1, &v9);
    degas::Bitmap::unionWith<degas::Bitmap>(&v12, &v9);
    v14 = v10;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v14);
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  degas::Bitmap::begin(&v12, &v9);
  while (1)
  {
    v6 = v9 == &v12 && *(&v9 + 1) == -1;
    if (v6 && v10[0] == v13[1])
    {
      break;
    }

    v7 = [(KGDatabase *)self labelNameForLabelIdentifier:?];
    if (v7)
    {
      [v5 addObject:v7];
    }

    degas::Bitmap::iterator::operator++(&v9);
  }

  degas::Cursor::~Cursor(v11);
  *&v9 = v13;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v9);

  return v5;
}

- (id)labelsOfNodesForIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v12 = 0u;
  memset(v13, 0, 25);
  degas::NodeCursor::NodeCursor(v11);
  degas::NodeCursor::setForIdentifiers(v11, [identifiersCopy bitmap], (self->_database + 192));
  while (degas::Statement::next(v11[0]) == 1)
  {
    v9 = 0u;
    memset(v10, 0, 25);
    degas::Statement::bitmapColumnValue(v11[0], 1, &v9);
    degas::Bitmap::unionWith<degas::Bitmap>(&v12, &v9);
    v14 = v10;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v14);
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  degas::Bitmap::begin(&v12, &v9);
  while (1)
  {
    v6 = v9 == &v12 && *(&v9 + 1) == -1;
    if (v6 && v10[0] == v13[1])
    {
      break;
    }

    v7 = [(KGDatabase *)self labelNameForLabelIdentifier:?];
    if (v7)
    {
      [v5 addObject:v7];
    }

    degas::Bitmap::iterator::operator++(&v9);
  }

  degas::Cursor::~Cursor(v11);
  *&v9 = v13;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v9);

  return v5;
}

- (id)edgeLabels
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  AllStatement = degas::LabelTable::readAllStatement((self->_database + 80));
  v5 = *AllStatement;
  v6 = AllStatement[1];
  v15[0] = v5;
  v15[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  while (degas::Statement::next(v5) == 1)
  {
    v13 = 0u;
    memset(v14, 0, 25);
    degas::Statement::bitmapColumnValue(v15[0], 3, &v13);
    if (v14[0] != v14[1])
    {
      __p[0] = 0;
      __p[1] = 0;
      v12 = 0;
      degas::Statement::stringColumnValue(v15[0], 1, __p);
      v7 = objc_alloc(MEMORY[0x277CCACA8]);
      if (v12 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      v9 = [v7 initWithUTF8String:v8];
      [v3 addObject:v9];

      if (SHIBYTE(v12) < 0)
      {
        operator delete(__p[0]);
      }
    }

    __p[0] = v14;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](__p);
    v5 = v15[0];
  }

  degas::Cursor::~Cursor(v15);

  return v3;
}

- (id)nodeLabels
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  AllStatement = degas::LabelTable::readAllStatement((self->_database + 80));
  v5 = *AllStatement;
  v6 = AllStatement[1];
  v15[0] = v5;
  v15[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  while (degas::Statement::next(v5) == 1)
  {
    v13 = 0u;
    memset(v14, 0, 25);
    degas::Statement::bitmapColumnValue(v15[0], 2, &v13);
    if (v14[0] != v14[1])
    {
      __p[0] = 0;
      __p[1] = 0;
      v12 = 0;
      degas::Statement::stringColumnValue(v15[0], 1, __p);
      v7 = objc_alloc(MEMORY[0x277CCACA8]);
      if (v12 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      v9 = [v7 initWithUTF8String:v8];
      [v3 addObject:v9];

      if (SHIBYTE(v12) < 0)
      {
        operator delete(__p[0]);
      }
    }

    __p[0] = v14;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](__p);
    v5 = v15[0];
  }

  degas::Cursor::~Cursor(v15);

  return v3;
}

- (id)labelIdentifierForLabelName:(id)name error:(id *)error
{
  v4 = [(KGDatabaseNameCache *)self->_nameCache labelIdentifierForName:name database:self updating:0 error:error];

  return v4;
}

- (id)labelNameForLabelIdentifier:(unint64_t)identifier
{
  nameCache = self->_nameCache;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:identifier];
  v6 = [(KGDatabaseNameCache *)nameCache labelNameForIdentifier:v5 database:self];

  return v6;
}

- (BOOL)labelIdentifiers:(void *)identifiers forLabels:(id)labels foundAll:(BOOL *)all error:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  labelsCopy = labels;
  isReadOnly = [(KGDatabase *)self isReadOnly];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = labelsCopy;
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v21 = labelsCopy;
    v13 = *v24;
    v14 = 1;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [(KGDatabaseNameCache *)self->_nameCache labelIdentifierForName:*(*(&v23 + 1) + 8 * i) database:self updating:!isReadOnly error:error, v21];
        v17 = v16;
        if (v16)
        {
          degas::Bitmap::setBit(identifiers, [v16 unsignedIntegerValue]);
        }

        else
        {
          if (!isReadOnly)
          {
            if (all)
            {
              *all = 0;
            }

            v18 = 0;
            goto LABEL_20;
          }

          v14 = 0;
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v14 = 1;
  }

  if (all)
  {
    *all = v14 & 1;
  }

  v18 = 1;
LABEL_20:

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (Bitmap)upsertLabels:(SEL)labels error:(id)error
{
  v21 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  *&retstr->_bitCount = 0u;
  *&retstr->_bitSets.__begin_ = 0u;
  *(&retstr->_bitSets.__end_ + 1) = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = errorCopy;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = [(KGDatabase *)self upsertLabel:*(*(&v16 + 1) + 8 * i) error:a5, v16];
        if (!v13)
        {
          degas::Bitmap::emptyBitmap(0);
          degas::Bitmap::operator=(retstr, &degas::Bitmap::emptyBitmap(void)::bitmap);
          goto LABEL_11;
        }

        degas::Bitmap::setBit(retstr, v13);
      }

      v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

- (unint64_t)upsertLabel:(id)label error:(id *)error
{
  v4 = [(KGDatabaseNameCache *)self->_nameCache labelIdentifierForName:label database:self updating:1 error:error];
  v5 = v4;
  if (v4)
  {
    unsignedIntegerValue = [v4 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (unint64_t)insertNewLabel:(id)label error:(id *)error
{
  v17 = *MEMORY[0x277D85DE8];
  labelCopy = label;
  v14 = 0;
  stringNSToStd(__p, labelCopy);
  v6 = degas::Database::addLabel(self->_database, &v14, __p);
  if (v6)
  {
    if (v6 == 5)
    {
      v7 = KGLoggingConnection();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v16 = labelCopy;
        _os_log_debug_impl(&dword_255870000, v7, OS_LOG_TYPE_DEBUG, "duplicate label:%@ already exists in database", buf, 0xCu);
      }
    }

    else
    {
      v8 = KGLoggingConnection();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v16 = labelCopy;
        _os_log_error_impl(&dword_255870000, v8, OS_LOG_TYPE_ERROR, "failed to create new label %@", buf, 0xCu);
      }

      v14 = 0;
    }
  }

  v9 = v14;
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)copyToURL:(id)l error:(id *)error
{
  lCopy = l;
  if (![lCopy isEqual:self->_url])
  {
    database = self->_database;
    std::string::basic_string[abi:ne200100]<0>(__p, [lCopy fileSystemRepresentation]);
    degas::Database::copyDatabase(database, __p);
  }

  if (error)
  {
    *error = kg_errorWithCode(5003);
  }

  return 0;
}

- (void)close
{
  v9 = *MEMORY[0x277D85DE8];
  [(KGGraphLockFile *)self->_lockFile unlock];
  degas::Database::close(self->_database);
  database = self->_database;
  if (database)
  {
    degas::Database::~Database(database);
    MEMORY[0x259C43EB0]();
  }

  v4 = KGLoggingConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    url = self->_url;
    v7 = 138412290;
    v8 = url;
    _os_log_impl(&dword_255870000, v4, OS_LOG_TYPE_INFO, "closing graph database at path %@", &v7, 0xCu);
  }

  self->_database = 0;
  +[KGElementIdentifierSet drainBitsetPool];
  v6 = *MEMORY[0x277D85DE8];
}

- (id)openModeDescription:(unint64_t)description
{
  descriptionCopy = description;
  v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v5 = v4;
  if (descriptionCopy)
  {
    v6 = @"read-only";
  }

  else
  {
    if ((descriptionCopy & 2) == 0)
    {
      goto LABEL_6;
    }

    v6 = @"read-write";
  }

  [v4 appendString:v6];
LABEL_6:
  if ((descriptionCopy & 4) != 0)
  {
    [v5 appendString:@" create"];
  }

  if ((descriptionCopy & 0x40) != 0)
  {
    v7 = @" protection class A";
  }

  else if ((descriptionCopy & 0x20) != 0)
  {
    v7 = @" protection class B";
  }

  else
  {
    if ((descriptionCopy & 0x10) == 0)
    {
      goto LABEL_15;
    }

    v7 = @" protection class C";
  }

  [v5 appendString:v7];
LABEL_15:
  if ((descriptionCopy & 0x80) != 0)
  {
    [v5 appendString:@" (track changes)"];
  }

  if ((descriptionCopy & 0x10000) != 0)
  {
    [v5 appendString:@" (test mode - should fail)"];
  }

  return v5;
}

- (BOOL)isReadOnly
{
  database = self->_database;
  if (database)
  {
    v3 = database[32];
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

- (void)setFatalError:(id)error
{
  v10 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = errorCopy;
  self->_databaseStatus = 0;
  if ((*(self->_database + 32) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, [errorCopy UTF8String]);
    degas::Database::setDatabaseFatalProblem(self->_database, __p);
    if (v9 < 0)
    {
      operator delete(*__p);
    }
  }

  v6 = KGLoggingConnection();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *__p = 138412290;
    *&__p[4] = v5;
    _os_log_error_impl(&dword_255870000, v6, OS_LOG_TYPE_ERROR, "fatal error detected: %@", __p, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  if (self->_database)
  {
    __assert_rtn("[KGDatabase dealloc]", "KGDatabase.mm", 504, "_database == NULL");
  }

  v2.receiver = self;
  v2.super_class = KGDatabase;
  [(KGDatabase *)&v2 dealloc];
}

- (KGDatabase)initWithURL:(id)l
{
  lCopy = l;
  v11.receiver = self;
  v11.super_class = KGDatabase;
  v6 = [(KGDatabase *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_url, l);
    v8 = objc_alloc_init(KGDatabaseNameCache);
    nameCache = v7->_nameCache;
    v7->_nameCache = v8;

    v7->_databaseStatus = 1;
  }

  return v7;
}

+ (void)deleteClosedDatabaseFilesAtStoreURL:(id)l
{
  v20 = *MEMORY[0x277D85DE8];
  lCopy = l;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [lCopy path];
  if ([defaultManager fileExistsAtPath:path])
  {
    v17 = 0;
    v6 = [defaultManager removeItemAtPath:path error:&v17];
    v7 = v17;
    if (v6)
    {
      v8 = [path stringByAppendingString:@"-wal"];
      v16 = v7;
      v9 = [defaultManager removeItemAtPath:v8 error:&v16];
      v10 = v16;

      if (v9)
      {
        v11 = [path stringByAppendingString:@"-shm"];
        v15 = v10;
        v12 = [defaultManager removeItemAtPath:v11 error:&v15];
        v7 = v15;

        if (v12)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v7 = v10;
      }
    }

    v13 = KGLoggingConnection();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v7;
      _os_log_error_impl(&dword_255870000, v13, OS_LOG_TYPE_ERROR, "failed deleting database files: %@", buf, 0xCu);
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_11:

  v14 = *MEMORY[0x277D85DE8];
}

+ (BOOL)migrateFromURL:(id)l toURL:(id)rL error:(id *)error
{
  v15 = *MEMORY[0x277D85DE8];
  lCopy = l;
  rLCopy = rL;
  v8 = [[KGGraphLockFile alloc] initWithDatabaseURL:rLCopy];
  if ([(KGGraphLockFile *)v8 lock])
  {
    std::string::basic_string[abi:ne200100]<0>(buf, [lCopy fileSystemRepresentation]);
    v9 = rLCopy;
    std::string::basic_string[abi:ne200100]<0>(&__p, [rLCopy fileSystemRepresentation]);
    degas::Database::copyDatabaseFromTo(buf);
  }

  v10 = KGLoggingConnection();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    *&buf[4] = rLCopy;
    _os_log_error_impl(&dword_255870000, v10, OS_LOG_TYPE_ERROR, "unable to clobber database as it is already open, possibly in another process: path=%@", buf, 0xCu);
  }

  v11 = *MEMORY[0x277D85DE8];
  return 0;
}

+ (BOOL)copyFromURL:(id)l toURL:(id)rL error:(id *)error
{
  lCopy = l;
  rLCopy = rL;
  degas::Database::Database(v15);
  std::string::basic_string[abi:ne200100]<0>(__p, [lCopy fileSystemRepresentation]);
  Only = degas::Database::openReadOnly(v15, __p);
  v10 = Only;
  if ((v14 & 0x80000000) == 0)
  {
    if (Only)
    {
      goto LABEL_3;
    }

LABEL_7:
    std::string::basic_string[abi:ne200100]<0>(__p, [rLCopy fileSystemRepresentation]);
    degas::Database::backupDatabase(v15, __p);
  }

  operator delete(__p[0]);
  if (!v10)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (error)
  {
    if ((v10 - 2) > 9)
    {
      v11 = -1;
    }

    else
    {
      v11 = qword_255972CE0[v10 - 2];
    }

    *error = kg_errorWithCode(v11);
  }

  degas::Database::~Database(v15);

  return 0;
}

+ (BOOL)emptyDatabaseExistsAtURL:(id)l error:(id *)error
{
  lCopy = l;
  std::string::basic_string[abi:ne200100]<0>(__p, [lCopy fileSystemRepresentation]);
  isEmptyDatabaseAtPath = degas::Database::isEmptyDatabaseAtPath(__p);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = isEmptyDatabaseAtPath - 2;
  if (isEmptyDatabaseAtPath != 2 && error && isEmptyDatabaseAtPath != 1)
  {
    if (v7 > 9)
    {
      v8 = -1;
    }

    else
    {
      v8 = qword_255972CE0[v7];
    }

    *error = kg_errorWithCode(v8);
  }

  return isEmptyDatabaseAtPath == 2;
}

+ (BOOL)destroyAtURL:(id)l error:(id *)error
{
  lCopy = l;
  path = [lCopy path];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if ([defaultManager fileExistsAtPath:path])
  {
    std::string::basic_string[abi:ne200100]<0>(__p, [lCopy fileSystemRepresentation]);
    degas::Database::truncateDatabaseAtPath(__p);
  }

  return 1;
}

+ (void)initialize
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults integerForKey:@"com.apple.knowledgegraph.explainmode"];

  if (v3 == 1)
  {
    v4 = &degas::sExplainQuery;
    v5 = &degas::sExplainQueryPlan;
  }

  else
  {
    if (v3 != 2)
    {
      goto LABEL_6;
    }

    v4 = &degas::sExplainQueryPlan;
    v5 = &degas::sExplainQuery;
  }

  *v5 = 1;
  *v4 = 0;
LABEL_6:
  standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v7 = [standardUserDefaults2 integerForKey:@"com.apple.knowledgegraph.querylogging"];

  if (v7 == 1)
  {
    v8 = &degas::sQueryLogging;
  }

  else
  {
    if (v7 != 2)
    {
      goto LABEL_11;
    }

    v8 = &degas::sQueryProfiling;
  }

  *v8 = 1;
LABEL_11:
  standardUserDefaults3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v10 = [standardUserDefaults3 BOOLForKey:@"com.apple.knowledgegraph.instrumentedtraversal"];

  if (v10)
  {
    degas::sInstrumentTraversal = 1;
  }

  standardUserDefaults4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v12 = [standardUserDefaults4 BOOLForKey:@"com.apple.knowledgegraph.insertlabeltracking"];

  if (v12)
  {
    degas::sDatabaseInsertLabelTracking = 1;
  }

  standardUserDefaults5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v14 = [standardUserDefaults5 BOOLForKey:@"com.apple.knowledgegraph.labelreferencechecking"];

  if (v14)
  {
    degas::sDatabaseLabelReferenceChecking = 1;
  }

  standardUserDefaults6 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v16 = [standardUserDefaults6 BOOLForKey:@"com.apple.knowledgegraph.databaseopenstackcapture"];

  if (v16)
  {
    sDatabaseOpenStackCapture = 1;
  }
}

@end