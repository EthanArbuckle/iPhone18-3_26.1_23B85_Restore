@interface _UIFocusGuideImpl
- (BOOL)_isEligibleForFocusInteraction;
- (CGRect)frame;
- (NSArray)preferredFocusEnvironments;
- (NSString)description;
- (_UIFocusGuideImpl)initWithDelegate:(id)a3;
- (id)_preferredFocusRegionCoordinateSpace;
- (id)focusGuideRegion:(id)a3 preferredFocusEnvironmentsForMovementRequest:(id)a4;
- (void)_searchForFocusRegionsInContext:(id)a3;
- (void)_setAutomaticallyPreferOwningItem:(BOOL)a3;
- (void)_setDidSetPreferredFocusedEnvironments:(BOOL)a3;
- (void)_setFocusPriorityRequired:(BOOL)a3;
- (void)_setIgnoresSpeedBumpEdges:(BOOL)a3;
- (void)_setIsUnclippable:(BOOL)a3;
- (void)_setIsUnoccludable:(BOOL)a3;
- (void)focusGuideRegion:(id)a3 willParticipateAsDestinationRegionInFocusUpdate:(id)a4;
- (void)setPreferredFocusEnvironments:(id)a3;
@end

@implementation _UIFocusGuideImpl

- (_UIFocusGuideImpl)initWithDelegate:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"_UIFocusGuideImpl.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"delegate != nil"}];
  }

  v11.receiver = self;
  v11.super_class = _UIFocusGuideImpl;
  v6 = [(_UIFocusGuideImpl *)&v11 init];
  v7 = v6;
  if (v6)
  {
    *&v6->_flags |= 0x41u;
    v6->_delegate = v5;
    if (objc_opt_respondsToSelector())
    {
      v8 = 0x80;
    }

    else
    {
      v8 = 0;
    }

    *&v7->_flags = v8 & 0x80 | *&v7->_flags & 0x7F;
  }

  return v7;
}

- (void)_setIsUnoccludable:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFD | v3;
}

- (void)_setIsUnclippable:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFB | v3;
}

- (void)_setFocusPriorityRequired:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_flags = *&self->_flags & 0xF7 | v3;
}

- (void)_setIgnoresSpeedBumpEdges:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_flags = *&self->_flags & 0xEF | v3;
}

- (void)_setAutomaticallyPreferOwningItem:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_flags = *&self->_flags & 0xBF | v3;
}

- (void)_setDidSetPreferredFocusedEnvironments:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_flags = *&self->_flags & 0xDF | v3;
}

- (NSArray)preferredFocusEnvironments
{
  v8[1] = *MEMORY[0x277D85DE8];
  if ([(NSArray *)self->_preferredFocusEnvironments count])
  {
    preferredFocusEnvironments = self->_preferredFocusEnvironments;
  }

  else
  {
    if ([(_UIFocusGuideImpl *)self _automaticallyPreferOwningItem])
    {
      if ((*&self->_flags & 0x20) == 0)
      {
        v4 = [(_UIFocusGuideImpl *)self owningItem];

        if (v4)
        {
          v5 = [(_UIFocusGuideImpl *)self owningItem];
          v8[0] = v5;
          v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

          goto LABEL_10;
        }
      }
    }

    preferredFocusEnvironments = self->_preferredFocusEnvironments;
    if (!preferredFocusEnvironments)
    {
      preferredFocusEnvironments = MEMORY[0x277CBEBF8];
    }
  }

  v6 = preferredFocusEnvironments;
LABEL_10:

  return v6;
}

- (void)setPreferredFocusEnvironments:(id)a3
{
  v4 = a3;
  if (!v4 || self->_preferredFocusEnvironments != v4)
  {
    v8 = v4;
    v5 = [(NSArray *)v4 copy];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = MEMORY[0x277CBEBF8];
    }

    objc_storeStrong(&self->_preferredFocusEnvironments, v7);

    v4 = v8;
  }

  *&self->_flags |= 0x20u;
}

- (CGRect)frame
{
  [(_UIFocusGuideImplDelegate *)self->_delegate frameForFocusGuide:self];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (BOOL)_isEligibleForFocusInteraction
{
  if (![(_UIFocusGuideImpl *)self isEnabled])
  {
    return 0;
  }

  v3 = [(_UIFocusGuideImpl *)self owningItem];
  if (v3)
  {
    v4 = [(_UIFocusGuideImpl *)self preferredFocusEnvironments];
    v5 = [v4 count] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_preferredFocusRegionCoordinateSpace
{
  v2 = [(_UIFocusGuideImpl *)self owningItem];
  v3 = [v2 focusItemContainer];
  v4 = [v3 coordinateSpace];

  return v4;
}

- (void)_searchForFocusRegionsInContext:(id)a3
{
  v4 = a3;
  v5 = [_UIFocusGuideRegion alloc];
  [(_UIFocusGuideImpl *)self frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(_UIFocusGuideImpl *)self owningItem];
  v15 = [v14 focusItemContainer];
  v16 = [v15 coordinateSpace];
  v19 = [(_UIFocusGuideRegion *)v5 initWithFrame:v16 coordinateSpace:v7, v9, v11, v13];

  [(_UIFocusGuideRegion *)v19 setDelegate:self];
  [(_UIFocusGuideRegion *)v19 _setIsUnoccludable:[(_UIFocusGuideImpl *)self _isUnoccludable]];
  v17 = [(_UIFocusGuideImpl *)self _focusPriorityRequired];
  LODWORD(v18) = 1140457472;
  if (v17)
  {
    *&v18 = 1000.0;
  }

  [(_UIFocusGuideRegion *)v19 _setFocusPriority:v18];
  [(_UIFocusGuideRegion *)v19 _setIgnoresSpeedBumpEdges:[(_UIFocusGuideImpl *)self _ignoresSpeedBumpEdges]];
  [(_UIFocusGuideRegion *)v19 _setIsUnclippable:[(_UIFocusGuideImpl *)self _isUnclippable]];
  [v4 addRegion:v19];
}

- (id)focusGuideRegion:(id)a3 preferredFocusEnvironmentsForMovementRequest:(id)a4
{
  if ((*&self->_flags & 0x80000000) != 0)
  {
    v6 = [a4 movementInfo];
    v7 = [v6 heading];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 originatingHeading];
    }

    v5 = [(_UIFocusGuideImplDelegate *)self->_delegate focusGuide:self preferredEnvironmentsForHeading:v7];
  }

  else
  {
    v5 = [(_UIFocusGuideImpl *)self preferredFocusEnvironments:a3];
  }

  return v5;
}

- (void)focusGuideRegion:(id)a3 willParticipateAsDestinationRegionInFocusUpdate:(id)a4
{
  v6 = a4;
  v5 = [v6 _focusedGuideImpl];

  if (!v5)
  {
    [v6 _setFocusedGuideImpl:self];
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = _UIFocusGuideImpl;
  v4 = [(_UIFocusGuideImpl *)&v9 description];
  v5 = [(_UIFocusGuideImpl *)self isEnabled];
  v6 = @"NO";
  if (v5)
  {
    v6 = @"YES";
  }

  v7 = [v3 stringWithFormat:@"%@, isEnabled: %@", v4, v6];

  return v7;
}

@end