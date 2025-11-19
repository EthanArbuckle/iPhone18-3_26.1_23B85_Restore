@interface CPLDiffTracker
- (BOOL)areObjectsDifferentOnProperty:(id)a3;
- (id)redactedDescription;
- (void)noteObjectsDifferOnProperty:(id)a3;
@end

@implementation CPLDiffTracker

- (id)redactedDescription
{
  if (self->_objectsAreTotallyDifferent)
  {
    v2 = @"[totally different objects]";
  }

  else if ([(NSMutableSet *)self->_differingProperties count])
  {
    v4 = objc_alloc(MEMORY[0x1E696AEC0]);
    v5 = [(NSMutableSet *)self->_differingProperties allObjects];
    v6 = [v5 componentsJoinedByString:{@", "}];
    v2 = [v4 initWithFormat:@"[diff. on %@]", v6];
  }

  else
  {
    v2 = @"[different objects]";
  }

  return v2;
}

- (BOOL)areObjectsDifferentOnProperty:(id)a3
{
  if (self->_objectsAreTotallyDifferent)
  {
    return 1;
  }

  else
  {
    return [(NSMutableSet *)self->_differingProperties containsObject:a3];
  }
}

- (void)noteObjectsDifferOnProperty:(id)a3
{
  v4 = a3;
  differingProperties = self->_differingProperties;
  v8 = v4;
  if (!differingProperties)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7 = self->_differingProperties;
    self->_differingProperties = v6;

    v4 = v8;
    differingProperties = self->_differingProperties;
  }

  [(NSMutableSet *)differingProperties addObject:v4];
}

@end