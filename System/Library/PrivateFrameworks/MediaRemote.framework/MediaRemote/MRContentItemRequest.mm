@interface MRContentItemRequest
- (MRContentItemRequest)initWithCoder:(id)coder;
- (MRContentItemRequest)initWithItem:(id)item request:(id)request;
- (void)encodeWithCoder:(id)coder;
- (void)setItem:(id)item;
@end

@implementation MRContentItemRequest

- (MRContentItemRequest)initWithItem:(id)item request:(id)request
{
  itemCopy = item;
  requestCopy = request;
  v14.receiver = self;
  v14.super_class = MRContentItemRequest;
  v8 = [(MRContentItemRequest *)&v14 init];
  if (v8)
  {
    if (itemCopy)
    {
      if (requestCopy)
      {
LABEL_4:
        v9 = [requestCopy copy];
        request = v8->_request;
        v8->_request = v9;

        v11 = MRContentItemCreateFromRequest(itemCopy, v8->_request);
        item = v8->_item;
        v8->_item = v11;

        goto LABEL_5;
      }
    }

    else
    {
      [MRContentItemRequest initWithItem:request:];
      if (requestCopy)
      {
        goto LABEL_4;
      }
    }

    [MRContentItemRequest initWithItem:request:];
    goto LABEL_4;
  }

LABEL_5:

  return v8;
}

- (void)setItem:(id)item
{
  MergedItem = MRContentItemCreateMergedItem(self->_item, item);
  item = self->_item;
  self->_item = MergedItem;
}

- (MRContentItemRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = MRContentItemRequest;
  v5 = [(MRContentItemRequest *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"1"];
    if (!v6)
    {
      [MRContentItemRequest initWithCoder:];
    }

    v7 = MRContentItemCreateFromExternalRepresentation(*MEMORY[0x1E695E480], v6);
    item = v5->_item;
    v5->_item = v7;

    if (!v5->_item)
    {
      [MRContentItemRequest initWithCoder:];
    }

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"0"];
    if (!v9)
    {
      [MRContentItemRequest initWithCoder:];
    }

    v10 = [[MRPlaybackQueueRequest alloc] initWithData:v9];
    request = v5->_request;
    v5->_request = v10;

    if (!v5->_request)
    {
      [MRContentItemRequest initWithCoder:];
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  item = self->_item;
  coderCopy = coder;
  ExternalRepresentation = MRContentItemCreateExternalRepresentation(0, item);
  [coderCopy encodeObject:ExternalRepresentation forKey:@"1"];
  data = [(MRPlaybackQueueRequest *)self->_request data];
  [coderCopy encodeObject:data forKey:@"0"];
}

- (void)initWithItem:request:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MRContentItemRequest initWithItem:request:]"];
  [OUTLINED_FUNCTION_0_2() handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (void)initWithItem:request:.cold.2()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MRContentItemRequest initWithItem:request:]"];
  [OUTLINED_FUNCTION_0_2() handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (void)initWithCoder:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MRContentItemRequest initWithCoder:]"];
  [OUTLINED_FUNCTION_0_2() handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (void)initWithCoder:.cold.2()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MRContentItemRequest initWithCoder:]"];
  [OUTLINED_FUNCTION_0_2() handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (void)initWithCoder:.cold.3()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MRContentItemRequest initWithCoder:]"];
  [OUTLINED_FUNCTION_0_2() handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (void)initWithCoder:.cold.4()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MRContentItemRequest initWithCoder:]"];
  [OUTLINED_FUNCTION_0_2() handleFailureInFunction:? file:? lineNumber:? description:?];
}

@end