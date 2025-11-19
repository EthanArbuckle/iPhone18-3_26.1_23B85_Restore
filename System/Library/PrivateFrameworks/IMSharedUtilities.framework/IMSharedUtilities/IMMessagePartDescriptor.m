@interface IMMessagePartDescriptor
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToMessagePart:(id)a3 ignoringRange:(BOOL)a4;
- (IMMessagePartDescriptor)initWithMessagePartBody:(id)a3 messagePartIndex:(unint64_t)a4 messagePartRange:(_NSRange)a5;
- (NSArray)fileTransferGUIDsInMessagePartText;
- (NSArray)links;
- (NSArray)mapLocations;
- (NSString)transferGUID;
- (_NSRange)messagePartRange;
- (id)messagePartGUIDForMessageGUID:(id)a3;
@end

@implementation IMMessagePartDescriptor

- (IMMessagePartDescriptor)initWithMessagePartBody:(id)a3 messagePartIndex:(unint64_t)a4 messagePartRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v9 = a3;
  v14.receiver = self;
  v14.super_class = IMMessagePartDescriptor;
  v10 = [(IMMessagePartDescriptor *)&v14 init];
  if (v10)
  {
    v11 = [v9 copy];
    messagePartBody = v10->_messagePartBody;
    v10->_messagePartBody = v11;

    v10->_messagePartRange.location = location;
    v10->_messagePartRange.length = length;
    v10->_messagePartIndex = a4;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(IMMessagePartDescriptor *)self isEqualToMessagePart:v4 ignoringRange:0];

  return v5;
}

- (BOOL)isEqualToMessagePart:(id)a3 ignoringRange:(BOOL)a4
{
  v6 = a3;
  if (a4 || (v7 = -[IMMessagePartDescriptor messagePartRange](self, "messagePartRange"), v9 = v8, v11 = 0, v7 == [v6 messagePartRange]) && v9 == v10)
  {
    v12 = [(IMMessagePartDescriptor *)self messagePartIndex];
    if (v12 == [v6 messagePartIndex])
    {
      v13 = [(IMMessagePartDescriptor *)self messagePartBody];
      v14 = [v6 messagePartBody];
      v15 = v13;
      v16 = v14;
      v17 = v16;
      if (v15 == v16)
      {
        v11 = 1;
      }

      else
      {
        v11 = 0;
        if (v15 && v16)
        {
          v11 = [v15 isEqualToAttributedString:v16];
        }
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)messagePartGUIDForMessageGUID:(id)a3
{
  v4 = a3;
  v5 = [IMMessagePartGUID alloc];
  v6 = +[IMMessagePartDescriptor defaultPrefix];
  v7 = [(IMMessagePartGUID *)v5 initWithMessageGUID:v4 prefix:v6 partNumber:[(IMMessagePartDescriptor *)self messagePartIndex]];

  return v7;
}

- (NSArray)links
{
  p_links = &self->_links;
  links = self->_links;
  if (!links)
  {
    v5 = [(NSAttributedString *)self->_messagePartBody __im_dataDetectedURLsFromAttributes];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(p_links, v7);

    links = self->_links;
  }

  return links;
}

- (NSArray)mapLocations
{
  v19 = *MEMORY[0x1E69E9840];
  mapLocations = self->_mapLocations;
  if (!mapLocations)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = [(IMMessagePartDescriptor *)self links];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        v9 = 0;
        do
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [IMMapURLLocationInfo locationInfoFromURL:*(*(&v14 + 1) + 8 * v9)];
          if (v10)
          {
            [v4 addObject:v10];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    v11 = [v4 copy];
    v12 = self->_mapLocations;
    self->_mapLocations = v11;

    mapLocations = self->_mapLocations;
  }

  return mapLocations;
}

- (NSString)transferGUID
{
  if (!self->_hasLoadedTransferGUID)
  {
    v3 = [(NSAttributedString *)self->_messagePartBody string];
    v4 = [v3 isEqualToString:*MEMORY[0x1E69A5F00]];

    if (v4)
    {
      v5 = [(NSAttributedString *)self->_messagePartBody attribute:*MEMORY[0x1E69A5F68] atIndex:0 effectiveRange:0];
      transferGUID = self->_transferGUID;
      self->_transferGUID = v5;
    }

    self->_hasLoadedTransferGUID = 1;
  }

  v7 = self->_transferGUID;

  return v7;
}

- (NSArray)fileTransferGUIDsInMessagePartText
{
  fileTransferGUIDsInMessagePartText = self->_fileTransferGUIDsInMessagePartText;
  if (!fileTransferGUIDsInMessagePartText)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v5 = [(NSAttributedString *)self->_messagePartBody length];
    messagePartBody = self->_messagePartBody;
    v7 = *MEMORY[0x1E69A5F68];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1A86B6EC0;
    v12[3] = &unk_1E7826748;
    v13 = v4;
    v8 = v4;
    [(NSAttributedString *)messagePartBody enumerateAttribute:v7 inRange:0 options:v5 usingBlock:0, v12];
    v9 = [v8 array];
    v10 = self->_fileTransferGUIDsInMessagePartText;
    self->_fileTransferGUIDsInMessagePartText = v9;

    fileTransferGUIDsInMessagePartText = self->_fileTransferGUIDsInMessagePartText;
  }

  return fileTransferGUIDsInMessagePartText;
}

- (_NSRange)messagePartRange
{
  length = self->_messagePartRange.length;
  location = self->_messagePartRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end