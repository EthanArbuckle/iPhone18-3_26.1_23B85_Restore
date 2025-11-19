@interface _UIFocusEnvironmentScrollableContainerTuple
+ (_UIFocusEnvironmentScrollableContainerTuple)tupleWithOwningEnvironment:(id)a3 scrollableContainer:(id)a4;
- (BOOL)isEqual:(id)a3;
- (_UIFocusEnvironmentScrollableContainerTuple)initWithOwningEnvironment:(id)a3 scrollableContainer:(id)a4;
- (id)description;
- (unint64_t)hash;
@end

@implementation _UIFocusEnvironmentScrollableContainerTuple

- (_UIFocusEnvironmentScrollableContainerTuple)initWithOwningEnvironment:(id)a3 scrollableContainer:(id)a4
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
    [v15 handleFailureInMethod:a2 object:self file:@"UIFocusItemContainer.m" lineNumber:442 description:{@"Invalid parameter not satisfying: %@", @"owningEnvironment != nil"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v16 = [MEMORY[0x277CCA890] currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"UIFocusItemContainer.m" lineNumber:443 description:{@"Invalid parameter not satisfying: %@", @"scrollableContainer != nil"}];

LABEL_3:
  v11 = [v8 focusItemContainer];

  if (v11 != v10)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"UIFocusItemContainer.m" lineNumber:444 description:{@"Invalid parameter not satisfying: %@", @"owningEnvironment.focusItemContainer == scrollableContainer"}];
  }

  v18.receiver = self;
  v18.super_class = _UIFocusEnvironmentScrollableContainerTuple;
  v12 = [(_UIFocusEnvironmentScrollableContainerTuple *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_owningEnvironment, a3);
    objc_storeStrong(&v13->_scrollableContainer, a4);
  }

  return v13;
}

+ (_UIFocusEnvironmentScrollableContainerTuple)tupleWithOwningEnvironment:(id)a3 scrollableContainer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithOwningEnvironment:v7 scrollableContainer:v6];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4 || (v5 = objc_opt_class(), v5 != objc_opt_class()))
  {
    v6 = 0;
    goto LABEL_12;
  }

  v7 = v4;
  v8 = logger();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

  if (v9)
  {
    v10 = [(_UIFocusEnvironmentScrollableContainerTuple *)self scrollableContainer];
    v11 = [v7 scrollableContainer];
    v12 = v11;
    if (v10 == v11)
    {
      v18 = [(_UIFocusEnvironmentScrollableContainerTuple *)self owningEnvironment];
      v19 = [v7 owningEnvironment];

      if (v18 == v19)
      {
        goto LABEL_8;
      }

      v10 = logger();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v20 = [(_UIFocusEnvironmentScrollableContainerTuple *)self scrollableContainer];
        if (v20)
        {
          v21 = MEMORY[0x277CCACA8];
          v22 = objc_opt_class();
          v23 = NSStringFromClass(v22);
          v24 = [v21 stringWithFormat:@"<%@: %p>", v23, v20];
        }

        else
        {
          v24 = @"(nil)";
        }

        v37 = v20;
        v25 = v24;
        v26 = [(_UIFocusEnvironmentScrollableContainerTuple *)self owningEnvironment];
        if (v26)
        {
          v27 = MEMORY[0x277CCACA8];
          v28 = objc_opt_class();
          v29 = NSStringFromClass(v28);
          v30 = [v27 stringWithFormat:@"<%@: %p>", v29, v26];
        }

        else
        {
          v30 = @"(nil)";
        }

        v31 = v30;
        v32 = [v7 owningEnvironment];
        if (v32)
        {
          v33 = MEMORY[0x277CCACA8];
          v34 = objc_opt_class();
          v35 = NSStringFromClass(v34);
          v36 = [v33 stringWithFormat:@"<%@: %p>", v35, v32];
        }

        else
        {
          v36 = @"(nil)";
        }

        *buf = 138412802;
        v39 = v25;
        v40 = 2112;
        v41 = v31;
        v42 = 2112;
        v43 = v36;
        _os_log_impl(&dword_24B885000, v10, OS_LOG_TYPE_INFO, "Warning: encountered a single UIFocusItemContainer: %@ yielded by two mismatched owning UIFocusEnvironments: %@ and %@. UIFocusItemContainer should be 1:1 with its owning environment.", buf, 0x20u);
      }
    }

    else
    {
    }
  }

LABEL_8:
  v13 = [(_UIFocusEnvironmentScrollableContainerTuple *)self owningEnvironment];
  v14 = [v7 owningEnvironment];
  if (v13 == v14)
  {
    v15 = [(_UIFocusEnvironmentScrollableContainerTuple *)self scrollableContainer];
    v16 = [v7 scrollableContainer];
    v6 = v15 == v16;
  }

  else
  {
    v6 = 0;
  }

LABEL_12:
  return v6;
}

- (unint64_t)hash
{
  v3 = [(_UIFocusEnvironmentScrollableContainerTuple *)self owningEnvironment];
  v4 = [v3 hash];
  v5 = [(_UIFocusEnvironmentScrollableContainerTuple *)self scrollableContainer];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p owningEnvironment: %@; scrollableContainer: %@>", v5, self, self->_owningEnvironment, self->_scrollableContainer];;

  return v6;
}

@end