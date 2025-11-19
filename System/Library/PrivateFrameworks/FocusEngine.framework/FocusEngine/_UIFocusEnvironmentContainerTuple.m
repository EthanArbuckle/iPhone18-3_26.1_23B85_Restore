@interface _UIFocusEnvironmentContainerTuple
+ (_UIFocusEnvironmentContainerTuple)tupleWithOwningEnvironment:(id)a3 itemContainer:(id)a4;
+ (_UIFocusEnvironmentContainerTuple)tupleWithRequiredContainerFromEnvironment:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToEnvironmentContainerTuple:(id)a3;
- (_UIFocusEnvironmentContainerTuple)initWithOwningEnvironment:(id)a3 itemContainer:(id)a4;
- (id)description;
- (unint64_t)hash;
@end

@implementation _UIFocusEnvironmentContainerTuple

- (_UIFocusEnvironmentContainerTuple)initWithOwningEnvironment:(id)a3 itemContainer:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"UIFocusItemContainer.m" lineNumber:378 description:{@"Invalid parameter not satisfying: %@", @"owningEnvironment != nil"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v16 = [MEMORY[0x277CCA890] currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"UIFocusItemContainer.m" lineNumber:379 description:{@"Invalid parameter not satisfying: %@", @"itemContainer != nil"}];

LABEL_3:
  v11 = [v8 focusItemContainer];

  if (v11 != v10)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"UIFocusItemContainer.m" lineNumber:380 description:{@"Invalid parameter not satisfying: %@", @"owningEnvironment.focusItemContainer == itemContainer"}];
  }

  v18.receiver = self;
  v18.super_class = _UIFocusEnvironmentContainerTuple;
  v12 = [(_UIFocusEnvironmentContainerTuple *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_owningEnvironment, a3);
    objc_storeStrong(&v13->_itemContainer, a4);
    v13->_isScrollableContainer = _UIFocusItemContainerIsScrollableContainer(v10);
  }

  return v13;
}

+ (_UIFocusEnvironmentContainerTuple)tupleWithOwningEnvironment:(id)a3 itemContainer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithOwningEnvironment:v7 itemContainer:v6];

  return v8;
}

+ (_UIFocusEnvironmentContainerTuple)tupleWithRequiredContainerFromEnvironment:(id)a3
{
  v4 = a3;
  v5 = [v4 focusItemContainer];
  v6 = [a1 tupleWithOwningEnvironment:v4 itemContainer:v5];

  return v6;
}

- (BOOL)isEqualToEnvironmentContainerTuple:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  owningEnvironment = self->_owningEnvironment;
  itemContainer = self->_itemContainer;
  v7 = v4[2];
  v8 = v4[3];
  v9 = logger();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);

  if (v10 && itemContainer == v8 && owningEnvironment != v7)
  {
    v15 = logger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v35 = v7;
      v36 = v8;
      v33 = owningEnvironment;
      v34 = itemContainer;
      v16 = [(_UIFocusEnvironmentContainerTuple *)self itemContainer];
      if (v16)
      {
        v17 = MEMORY[0x277CCACA8];
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        v20 = [v17 stringWithFormat:@"<%@: %p>", v19, v16];
      }

      else
      {
        v20 = @"(nil)";
      }

      v21 = v20;
      v22 = [(_UIFocusEnvironmentContainerTuple *)self owningEnvironment];
      if (v22)
      {
        v23 = MEMORY[0x277CCACA8];
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        v26 = [v23 stringWithFormat:@"<%@: %p>", v25, v22];
      }

      else
      {
        v26 = @"(nil)";
      }

      v27 = v26;
      v28 = [v4 owningEnvironment];
      if (v28)
      {
        v29 = MEMORY[0x277CCACA8];
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        v32 = [v29 stringWithFormat:@"<%@: %p>", v31, v28];
      }

      else
      {
        v32 = @"(nil)";
      }

      *buf = 138412802;
      v38 = v21;
      v39 = 2112;
      v40 = v27;
      v41 = 2112;
      v42 = v32;
      _os_log_impl(&dword_24B885000, v15, OS_LOG_TYPE_INFO, "Warning: encountered a single UIFocusItemContainer: %@ yielded by two mismatched owning UIFocusEnvironments: %@ and %@. UIFocusItemContainer should be 1:1 with its owning environment.", buf, 0x20u);

      owningEnvironment = v33;
      itemContainer = v34;
      v7 = v35;
      v8 = v36;
    }
  }

  v12 = owningEnvironment == v7 && itemContainer == v8;

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v6 = v4 && (v5 = objc_opt_class(), v5 == objc_opt_class()) && [(_UIFocusEnvironmentContainerTuple *)self isEqualToEnvironmentContainerTuple:v4];

  return v6;
}

- (unint64_t)hash
{
  v3 = [(_UIFocusEnvironmentContainerTuple *)self owningEnvironment];
  v4 = [v3 hash];
  v5 = [(_UIFocusEnvironmentContainerTuple *)self itemContainer];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p owningEnvironment: %@; itemContainer: %@>", v5, self, self->_owningEnvironment, self->_itemContainer];;

  return v6;
}

@end