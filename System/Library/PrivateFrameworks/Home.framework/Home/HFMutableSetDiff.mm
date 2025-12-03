@interface HFMutableSetDiff
- (HFMutableSetDiff)initWithFromSet:(id)set;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)addObject:(id)object;
- (void)addObjects:(id)objects;
- (void)deleteAllObjects;
- (void)deleteObject:(id)object;
- (void)deleteObjects:(id)objects;
- (void)updateObject:(id)object;
- (void)updateObjects:(id)objects;
@end

@implementation HFMutableSetDiff

- (HFMutableSetDiff)initWithFromSet:(id)set
{
  setCopy = set;
  v17.receiver = self;
  v17.super_class = HFMutableSetDiff;
  v5 = [(HFMutableSetDiff *)&v17 init];
  if (v5)
  {
    if (setCopy)
    {
      v6 = [setCopy copy];
    }

    else
    {
      v6 = [MEMORY[0x277CBEB98] set];
    }

    fromSet = v5->super._fromSet;
    v5->super._fromSet = v6;

    v8 = [MEMORY[0x277CBEB58] setWithSet:v5->super._fromSet];
    toSet = v5->super._toSet;
    v5->super._toSet = v8;

    v10 = [MEMORY[0x277CBEB58] set];
    additions = v5->super._additions;
    v5->super._additions = v10;

    v12 = [MEMORY[0x277CBEB58] set];
    deletions = v5->super._deletions;
    v5->super._deletions = v12;

    v14 = [MEMORY[0x277CBEB58] set];
    updates = v5->super._updates;
    v5->super._updates = v14;
  }

  return v5;
}

- (void)addObject:(id)object
{
  v15 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  if (objectCopy)
  {
    if ([(NSSet *)self->super._fromSet containsObject:objectCopy]&& ([(NSMutableSet *)self->super._deletions containsObject:objectCopy]& 1) == 0)
    {
      NSLog(&cfstr_AttemptingToAd.isa);
    }

    [(NSMutableSet *)self->super._toSet na_safeAddObject:objectCopy];
    if ([(NSSet *)self->super._fromSet containsObject:objectCopy])
    {
      if ([(NSMutableSet *)self->super._deletions containsObject:objectCopy])
      {
        [(NSMutableSet *)self->super._deletions removeObject:objectCopy];
        [(NSMutableSet *)self->super._updates na_safeAddObject:objectCopy];
      }
    }

    else
    {
      [(NSMutableSet *)self->super._additions na_safeAddObject:objectCopy];
      [(NSMutableSet *)self->super._updates removeObject:objectCopy];
    }

    [(HFMutableSetDiff *)self _updateHasChanges];
  }

  else
  {
    v6 = HFLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = NSStringFromSelector(a2);
      v11 = 138412546;
      v12 = v9;
      v13 = 2112;
      v14 = v10;
      _os_log_error_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_ERROR, "Ignoring %@ %@ because object is nil", &v11, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)deleteObject:(id)object
{
  objectCopy = object;
  [(NSMutableSet *)self->super._toSet removeObject:objectCopy];
  if ([(NSSet *)self->super._fromSet containsObject:objectCopy])
  {
    [(NSMutableSet *)self->super._deletions na_safeAddObject:objectCopy];
  }

  [(NSMutableSet *)self->super._additions removeObject:objectCopy];
  [(NSMutableSet *)self->super._updates removeObject:objectCopy];
  [(HFMutableSetDiff *)self _updateHasChanges];
}

- (void)deleteAllObjects
{
  [(NSMutableSet *)self->super._toSet removeAllObjects];
  [(NSMutableSet *)self->super._additions removeAllObjects];
  [(NSMutableSet *)self->super._updates removeAllObjects];
  v3 = [MEMORY[0x277CBEB58] setWithSet:self->super._fromSet];
  deletions = self->super._deletions;
  self->super._deletions = v3;

  [(HFMutableSetDiff *)self _updateHasChanges];
}

- (void)updateObject:(id)object
{
  objectCopy = object;
  if (![(NSSet *)self->super._fromSet containsObject:?]&& ([(NSMutableSet *)self->super._toSet containsObject:objectCopy]& 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFSetDiff.m" lineNumber:185 description:{@"Invalid parameter not satisfying: %@", @"[_fromSet containsObject:object] || [_toSet containsObject:object]"}];
  }

  if ([(NSSet *)self->super._fromSet containsObject:objectCopy])
  {
    [(NSMutableSet *)self->super._updates na_safeAddObject:objectCopy];
    [(HFMutableSetDiff *)self _updateHasChanges];
  }
}

- (void)addObjects:(id)objects
{
  objectsCopy = objects;
  if ([objectsCopy count])
  {
    if ([(NSSet *)self->super._fromSet intersectsSet:objectsCopy]&& ([(NSMutableSet *)self->super._deletions intersectsSet:objectsCopy]& 1) == 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"HFSetDiff.m" lineNumber:200 description:{@"Invalid parameter not satisfying: %@", @"![_fromSet intersectsSet:objects] || [_deletions intersectsSet:objects]"}];
    }

    [(NSMutableSet *)self->super._toSet unionSet:objectsCopy];
    v5 = [(NSMutableSet *)self->super._deletions na_setByIntersectingWithSet:objectsCopy];
    v6 = [objectsCopy na_setByRemovingObjectsFromSet:v5];
    [(NSMutableSet *)self->super._updates minusSet:v6];
    [(NSMutableSet *)self->super._additions unionSet:v6];
    [(NSMutableSet *)self->super._deletions minusSet:v5];
    [(NSMutableSet *)self->super._updates unionSet:v5];
    [(HFMutableSetDiff *)self _updateHasChanges];
  }
}

- (void)updateObjects:(id)objects
{
  objectsCopy = objects;
  v5 = [objectsCopy count];
  v6 = objectsCopy;
  if (v5)
  {
    if (![(NSSet *)self->super._fromSet intersectsSet:objectsCopy]&& ([(NSMutableSet *)self->super._toSet intersectsSet:objectsCopy]& 1) == 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"HFSetDiff.m" lineNumber:222 description:{@"Invalid parameter not satisfying: %@", @"[_fromSet intersectsSet:objects] || [_toSet intersectsSet:objects]"}];
    }

    v7 = [(NSSet *)self->super._fromSet na_setByIntersectingWithSet:objectsCopy];
    [(NSMutableSet *)self->super._updates unionSet:v7];
    if ([v7 count])
    {
      [(HFMutableSetDiff *)self _updateHasChanges];
    }

    v6 = objectsCopy;
  }
}

- (void)deleteObjects:(id)objects
{
  objectsCopy = objects;
  if ([objectsCopy count])
  {
    [(NSMutableSet *)self->super._toSet minusSet:objectsCopy];
    v4 = [(NSSet *)self->super._fromSet na_setByIntersectingWithSet:objectsCopy];
    [(NSMutableSet *)self->super._deletions unionSet:v4];
    [(NSMutableSet *)self->super._additions minusSet:objectsCopy];
    [(NSMutableSet *)self->super._updates minusSet:objectsCopy];
    [(HFMutableSetDiff *)self _updateHasChanges];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HFSetDiff alloc];
  fromSet = [(HFSetDiff *)self fromSet];
  v5 = [fromSet copy];
  toSet = [(HFSetDiff *)self toSet];
  v7 = [toSet mutableCopy];
  additions = [(HFSetDiff *)self additions];
  v9 = [additions mutableCopy];
  deletions = [(HFSetDiff *)self deletions];
  v11 = [deletions mutableCopy];
  updates = [(HFSetDiff *)self updates];
  v13 = [updates mutableCopy];
  v14 = [(HFSetDiff *)v4 _initWithFromSet:v5 toSet:v7 additions:v9 deletions:v11 updates:v13];

  return v14;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [HFMutableSetDiff alloc];
  fromSet = [(HFSetDiff *)self fromSet];
  v5 = [fromSet copy];
  toSet = [(HFSetDiff *)self toSet];
  v7 = [toSet mutableCopy];
  additions = [(HFSetDiff *)self additions];
  v9 = [additions mutableCopy];
  deletions = [(HFSetDiff *)self deletions];
  v11 = [deletions mutableCopy];
  updates = [(HFSetDiff *)self updates];
  v13 = [updates mutableCopy];
  v14 = [(HFSetDiff *)v4 _initWithFromSet:v5 toSet:v7 additions:v9 deletions:v11 updates:v13];

  [v14 _updateHasChanges];
  return v14;
}

@end