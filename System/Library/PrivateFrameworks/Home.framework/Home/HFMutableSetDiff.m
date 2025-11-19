@interface HFMutableSetDiff
- (HFMutableSetDiff)initWithFromSet:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)addObject:(id)a3;
- (void)addObjects:(id)a3;
- (void)deleteAllObjects;
- (void)deleteObject:(id)a3;
- (void)deleteObjects:(id)a3;
- (void)updateObject:(id)a3;
- (void)updateObjects:(id)a3;
@end

@implementation HFMutableSetDiff

- (HFMutableSetDiff)initWithFromSet:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = HFMutableSetDiff;
  v5 = [(HFMutableSetDiff *)&v17 init];
  if (v5)
  {
    if (v4)
    {
      v6 = [v4 copy];
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

- (void)addObject:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    if ([(NSSet *)self->super._fromSet containsObject:v5]&& ([(NSMutableSet *)self->super._deletions containsObject:v5]& 1) == 0)
    {
      NSLog(&cfstr_AttemptingToAd.isa);
    }

    [(NSMutableSet *)self->super._toSet na_safeAddObject:v5];
    if ([(NSSet *)self->super._fromSet containsObject:v5])
    {
      if ([(NSMutableSet *)self->super._deletions containsObject:v5])
      {
        [(NSMutableSet *)self->super._deletions removeObject:v5];
        [(NSMutableSet *)self->super._updates na_safeAddObject:v5];
      }
    }

    else
    {
      [(NSMutableSet *)self->super._additions na_safeAddObject:v5];
      [(NSMutableSet *)self->super._updates removeObject:v5];
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

- (void)deleteObject:(id)a3
{
  v4 = a3;
  [(NSMutableSet *)self->super._toSet removeObject:v4];
  if ([(NSSet *)self->super._fromSet containsObject:v4])
  {
    [(NSMutableSet *)self->super._deletions na_safeAddObject:v4];
  }

  [(NSMutableSet *)self->super._additions removeObject:v4];
  [(NSMutableSet *)self->super._updates removeObject:v4];
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

- (void)updateObject:(id)a3
{
  v6 = a3;
  if (![(NSSet *)self->super._fromSet containsObject:?]&& ([(NSMutableSet *)self->super._toSet containsObject:v6]& 1) == 0)
  {
    v5 = [MEMORY[0x277CCA890] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"HFSetDiff.m" lineNumber:185 description:{@"Invalid parameter not satisfying: %@", @"[_fromSet containsObject:object] || [_toSet containsObject:object]"}];
  }

  if ([(NSSet *)self->super._fromSet containsObject:v6])
  {
    [(NSMutableSet *)self->super._updates na_safeAddObject:v6];
    [(HFMutableSetDiff *)self _updateHasChanges];
  }
}

- (void)addObjects:(id)a3
{
  v8 = a3;
  if ([v8 count])
  {
    if ([(NSSet *)self->super._fromSet intersectsSet:v8]&& ([(NSMutableSet *)self->super._deletions intersectsSet:v8]& 1) == 0)
    {
      v7 = [MEMORY[0x277CCA890] currentHandler];
      [v7 handleFailureInMethod:a2 object:self file:@"HFSetDiff.m" lineNumber:200 description:{@"Invalid parameter not satisfying: %@", @"![_fromSet intersectsSet:objects] || [_deletions intersectsSet:objects]"}];
    }

    [(NSMutableSet *)self->super._toSet unionSet:v8];
    v5 = [(NSMutableSet *)self->super._deletions na_setByIntersectingWithSet:v8];
    v6 = [v8 na_setByRemovingObjectsFromSet:v5];
    [(NSMutableSet *)self->super._updates minusSet:v6];
    [(NSMutableSet *)self->super._additions unionSet:v6];
    [(NSMutableSet *)self->super._deletions minusSet:v5];
    [(NSMutableSet *)self->super._updates unionSet:v5];
    [(HFMutableSetDiff *)self _updateHasChanges];
  }
}

- (void)updateObjects:(id)a3
{
  v9 = a3;
  v5 = [v9 count];
  v6 = v9;
  if (v5)
  {
    if (![(NSSet *)self->super._fromSet intersectsSet:v9]&& ([(NSMutableSet *)self->super._toSet intersectsSet:v9]& 1) == 0)
    {
      v8 = [MEMORY[0x277CCA890] currentHandler];
      [v8 handleFailureInMethod:a2 object:self file:@"HFSetDiff.m" lineNumber:222 description:{@"Invalid parameter not satisfying: %@", @"[_fromSet intersectsSet:objects] || [_toSet intersectsSet:objects]"}];
    }

    v7 = [(NSSet *)self->super._fromSet na_setByIntersectingWithSet:v9];
    [(NSMutableSet *)self->super._updates unionSet:v7];
    if ([v7 count])
    {
      [(HFMutableSetDiff *)self _updateHasChanges];
    }

    v6 = v9;
  }
}

- (void)deleteObjects:(id)a3
{
  v5 = a3;
  if ([v5 count])
  {
    [(NSMutableSet *)self->super._toSet minusSet:v5];
    v4 = [(NSSet *)self->super._fromSet na_setByIntersectingWithSet:v5];
    [(NSMutableSet *)self->super._deletions unionSet:v4];
    [(NSMutableSet *)self->super._additions minusSet:v5];
    [(NSMutableSet *)self->super._updates minusSet:v5];
    [(HFMutableSetDiff *)self _updateHasChanges];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HFSetDiff alloc];
  v16 = [(HFSetDiff *)self fromSet];
  v5 = [v16 copy];
  v6 = [(HFSetDiff *)self toSet];
  v7 = [v6 mutableCopy];
  v8 = [(HFSetDiff *)self additions];
  v9 = [v8 mutableCopy];
  v10 = [(HFSetDiff *)self deletions];
  v11 = [v10 mutableCopy];
  v12 = [(HFSetDiff *)self updates];
  v13 = [v12 mutableCopy];
  v14 = [(HFSetDiff *)v4 _initWithFromSet:v5 toSet:v7 additions:v9 deletions:v11 updates:v13];

  return v14;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [HFMutableSetDiff alloc];
  v16 = [(HFSetDiff *)self fromSet];
  v5 = [v16 copy];
  v6 = [(HFSetDiff *)self toSet];
  v7 = [v6 mutableCopy];
  v8 = [(HFSetDiff *)self additions];
  v9 = [v8 mutableCopy];
  v10 = [(HFSetDiff *)self deletions];
  v11 = [v10 mutableCopy];
  v12 = [(HFSetDiff *)self updates];
  v13 = [v12 mutableCopy];
  v14 = [(HFSetDiff *)v4 _initWithFromSet:v5 toSet:v7 additions:v9 deletions:v11 updates:v13];

  [v14 _updateHasChanges];
  return v14;
}

@end