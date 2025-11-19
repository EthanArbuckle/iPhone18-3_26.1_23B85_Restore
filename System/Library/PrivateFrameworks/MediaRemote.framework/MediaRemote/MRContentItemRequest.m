@interface MRContentItemRequest
- (MRContentItemRequest)initWithCoder:(id)a3;
- (MRContentItemRequest)initWithItem:(id)a3 request:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)setItem:(id)a3;
@end

@implementation MRContentItemRequest

- (MRContentItemRequest)initWithItem:(id)a3 request:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = MRContentItemRequest;
  v8 = [(MRContentItemRequest *)&v14 init];
  if (v8)
  {
    if (v6)
    {
      if (v7)
      {
LABEL_4:
        v9 = [v7 copy];
        request = v8->_request;
        v8->_request = v9;

        v11 = MRContentItemCreateFromRequest(v6, v8->_request);
        item = v8->_item;
        v8->_item = v11;

        goto LABEL_5;
      }
    }

    else
    {
      [MRContentItemRequest initWithItem:request:];
      if (v7)
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

- (void)setItem:(id)a3
{
  MergedItem = MRContentItemCreateMergedItem(self->_item, a3);
  item = self->_item;
  self->_item = MergedItem;
}

- (MRContentItemRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MRContentItemRequest;
  v5 = [(MRContentItemRequest *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"1"];
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

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"0"];
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

- (void)encodeWithCoder:(id)a3
{
  item = self->_item;
  v5 = a3;
  ExternalRepresentation = MRContentItemCreateExternalRepresentation(0, item);
  [v5 encodeObject:ExternalRepresentation forKey:@"1"];
  v6 = [(MRPlaybackQueueRequest *)self->_request data];
  [v5 encodeObject:v6 forKey:@"0"];
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