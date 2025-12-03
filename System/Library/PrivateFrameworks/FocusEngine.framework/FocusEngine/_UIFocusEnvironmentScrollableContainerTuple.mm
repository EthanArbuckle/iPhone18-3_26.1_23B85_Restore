@interface _UIFocusEnvironmentScrollableContainerTuple
+ (_UIFocusEnvironmentScrollableContainerTuple)tupleWithOwningEnvironment:(id)environment scrollableContainer:(id)container;
- (BOOL)isEqual:(id)equal;
- (_UIFocusEnvironmentScrollableContainerTuple)initWithOwningEnvironment:(id)environment scrollableContainer:(id)container;
- (id)description;
- (unint64_t)hash;
@end

@implementation _UIFocusEnvironmentScrollableContainerTuple

- (_UIFocusEnvironmentScrollableContainerTuple)initWithOwningEnvironment:(id)environment scrollableContainer:(id)container
{
  environmentCopy = environment;
  containerCopy = container;
  v10 = containerCopy;
  if (environmentCopy)
  {
    if (containerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIFocusItemContainer.m" lineNumber:442 description:{@"Invalid parameter not satisfying: %@", @"owningEnvironment != nil"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIFocusItemContainer.m" lineNumber:443 description:{@"Invalid parameter not satisfying: %@", @"scrollableContainer != nil"}];

LABEL_3:
  focusItemContainer = [environmentCopy focusItemContainer];

  if (focusItemContainer != v10)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"UIFocusItemContainer.m" lineNumber:444 description:{@"Invalid parameter not satisfying: %@", @"owningEnvironment.focusItemContainer == scrollableContainer"}];
  }

  v18.receiver = self;
  v18.super_class = _UIFocusEnvironmentScrollableContainerTuple;
  v12 = [(_UIFocusEnvironmentScrollableContainerTuple *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_owningEnvironment, environment);
    objc_storeStrong(&v13->_scrollableContainer, container);
  }

  return v13;
}

+ (_UIFocusEnvironmentScrollableContainerTuple)tupleWithOwningEnvironment:(id)environment scrollableContainer:(id)container
{
  containerCopy = container;
  environmentCopy = environment;
  v8 = [[self alloc] initWithOwningEnvironment:environmentCopy scrollableContainer:containerCopy];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  v44 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  if (!equalCopy || (v5 = objc_opt_class(), v5 != objc_opt_class()))
  {
    v6 = 0;
    goto LABEL_12;
  }

  v7 = equalCopy;
  v8 = logger();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

  if (v9)
  {
    scrollableContainer = [(_UIFocusEnvironmentScrollableContainerTuple *)self scrollableContainer];
    scrollableContainer2 = [v7 scrollableContainer];
    v12 = scrollableContainer2;
    if (scrollableContainer == scrollableContainer2)
    {
      owningEnvironment = [(_UIFocusEnvironmentScrollableContainerTuple *)self owningEnvironment];
      owningEnvironment2 = [v7 owningEnvironment];

      if (owningEnvironment == owningEnvironment2)
      {
        goto LABEL_8;
      }

      scrollableContainer = logger();
      if (os_log_type_enabled(scrollableContainer, OS_LOG_TYPE_INFO))
      {
        scrollableContainer3 = [(_UIFocusEnvironmentScrollableContainerTuple *)self scrollableContainer];
        if (scrollableContainer3)
        {
          v21 = MEMORY[0x277CCACA8];
          v22 = objc_opt_class();
          v23 = NSStringFromClass(v22);
          v24 = [v21 stringWithFormat:@"<%@: %p>", v23, scrollableContainer3];
        }

        else
        {
          v24 = @"(nil)";
        }

        v37 = scrollableContainer3;
        v25 = v24;
        owningEnvironment3 = [(_UIFocusEnvironmentScrollableContainerTuple *)self owningEnvironment];
        if (owningEnvironment3)
        {
          v27 = MEMORY[0x277CCACA8];
          v28 = objc_opt_class();
          v29 = NSStringFromClass(v28);
          v30 = [v27 stringWithFormat:@"<%@: %p>", v29, owningEnvironment3];
        }

        else
        {
          v30 = @"(nil)";
        }

        v31 = v30;
        owningEnvironment4 = [v7 owningEnvironment];
        if (owningEnvironment4)
        {
          v33 = MEMORY[0x277CCACA8];
          v34 = objc_opt_class();
          v35 = NSStringFromClass(v34);
          v36 = [v33 stringWithFormat:@"<%@: %p>", v35, owningEnvironment4];
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
        _os_log_impl(&dword_24B885000, scrollableContainer, OS_LOG_TYPE_INFO, "Warning: encountered a single UIFocusItemContainer: %@ yielded by two mismatched owning UIFocusEnvironments: %@ and %@. UIFocusItemContainer should be 1:1 with its owning environment.", buf, 0x20u);
      }
    }

    else
    {
    }
  }

LABEL_8:
  owningEnvironment5 = [(_UIFocusEnvironmentScrollableContainerTuple *)self owningEnvironment];
  owningEnvironment6 = [v7 owningEnvironment];
  if (owningEnvironment5 == owningEnvironment6)
  {
    scrollableContainer4 = [(_UIFocusEnvironmentScrollableContainerTuple *)self scrollableContainer];
    scrollableContainer5 = [v7 scrollableContainer];
    v6 = scrollableContainer4 == scrollableContainer5;
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
  owningEnvironment = [(_UIFocusEnvironmentScrollableContainerTuple *)self owningEnvironment];
  v4 = [owningEnvironment hash];
  scrollableContainer = [(_UIFocusEnvironmentScrollableContainerTuple *)self scrollableContainer];
  v6 = [scrollableContainer hash];

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