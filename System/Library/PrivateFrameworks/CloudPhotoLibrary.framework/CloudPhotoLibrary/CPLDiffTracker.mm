@interface CPLDiffTracker
- (BOOL)areObjectsDifferentOnProperty:(id)property;
- (id)redactedDescription;
- (void)noteObjectsDifferOnProperty:(id)property;
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
    allObjects = [(NSMutableSet *)self->_differingProperties allObjects];
    v6 = [allObjects componentsJoinedByString:{@", "}];
    v2 = [v4 initWithFormat:@"[diff. on %@]", v6];
  }

  else
  {
    v2 = @"[different objects]";
  }

  return v2;
}

- (BOOL)areObjectsDifferentOnProperty:(id)property
{
  if (self->_objectsAreTotallyDifferent)
  {
    return 1;
  }

  else
  {
    return [(NSMutableSet *)self->_differingProperties containsObject:property];
  }
}

- (void)noteObjectsDifferOnProperty:(id)property
{
  propertyCopy = property;
  differingProperties = self->_differingProperties;
  v8 = propertyCopy;
  if (!differingProperties)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7 = self->_differingProperties;
    self->_differingProperties = v6;

    propertyCopy = v8;
    differingProperties = self->_differingProperties;
  }

  [(NSMutableSet *)differingProperties addObject:propertyCopy];
}

@end