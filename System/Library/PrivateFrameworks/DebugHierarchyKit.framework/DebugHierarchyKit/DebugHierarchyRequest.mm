@interface DebugHierarchyRequest
- (id)lldbExpressionInPlaceOutError:(id *)error;
- (id)lldbExpressionReturningNSDataOutError:(id *)error;
@end

@implementation DebugHierarchyRequest

- (id)lldbExpressionReturningNSDataOutError:(id *)error
{
  serializedCompatibilitySupportRepresentation = [(DebugHierarchyRequest *)self serializedCompatibilitySupportRepresentation];

  if (serializedCompatibilitySupportRepresentation)
  {
    serializedCompatibilitySupportRepresentation2 = [(DebugHierarchyRequest *)self serializedCompatibilitySupportRepresentation];
LABEL_3:
    v7 = [serializedCompatibilitySupportRepresentation2 base64EncodedStringWithOptions:0];
    v8 = [NSString stringWithFormat:@"(id)[[(Class)objc_getClass(DBGTargetHub) sharedHub] performRequestWithRequestInBase64:@%@]", v7];

    v9 = 0;
    goto LABEL_4;
  }

  dictionaryRepresentation = [(DebugHierarchyRequest *)self dictionaryRepresentation];
  v13 = 0;
  serializedCompatibilitySupportRepresentation2 = [dictionaryRepresentation generateJSONDataWithError:&v13];
  v9 = v13;

  if (!v9)
  {
    goto LABEL_3;
  }

  if (error)
  {
    v12 = v9;
    v8 = 0;
    *error = v9;
  }

  else
  {
    v8 = 0;
  }

LABEL_4:

  return v8;
}

- (id)lldbExpressionInPlaceOutError:(id *)error
{
  serializedCompatibilitySupportRepresentation = [(DebugHierarchyRequest *)self serializedCompatibilitySupportRepresentation];

  if (serializedCompatibilitySupportRepresentation)
  {
    serializedCompatibilitySupportRepresentation2 = [(DebugHierarchyRequest *)self serializedCompatibilitySupportRepresentation];
LABEL_3:
    v7 = [serializedCompatibilitySupportRepresentation2 base64EncodedStringWithOptions:0];
    v8 = [NSString stringWithFormat:@"(BOOL)[[(Class)objc_getClass(DebugHierarchyTargetHub) sharedHub] performRequestInPlaceWithRequestInBase64:@%@]", v7];

    v9 = 0;
    goto LABEL_4;
  }

  dictionaryRepresentation = [(DebugHierarchyRequest *)self dictionaryRepresentation];
  v13 = 0;
  serializedCompatibilitySupportRepresentation2 = [dictionaryRepresentation generateJSONDataWithError:&v13];
  v9 = v13;

  if (!v9)
  {
    goto LABEL_3;
  }

  if (error)
  {
    v12 = v9;
    v8 = 0;
    *error = v9;
  }

  else
  {
    v8 = 0;
  }

LABEL_4:

  return v8;
}

@end