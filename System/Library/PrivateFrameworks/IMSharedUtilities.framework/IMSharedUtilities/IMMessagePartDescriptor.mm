@interface IMMessagePartDescriptor
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMessagePart:(id)part ignoringRange:(BOOL)range;
- (IMMessagePartDescriptor)initWithMessagePartBody:(id)body messagePartIndex:(unint64_t)index messagePartRange:(_NSRange)range;
- (NSArray)fileTransferGUIDsInMessagePartText;
- (NSArray)links;
- (NSArray)mapLocations;
- (NSString)transferGUID;
- (_NSRange)messagePartRange;
- (id)messagePartGUIDForMessageGUID:(id)d;
@end

@implementation IMMessagePartDescriptor

- (IMMessagePartDescriptor)initWithMessagePartBody:(id)body messagePartIndex:(unint64_t)index messagePartRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  bodyCopy = body;
  v14.receiver = self;
  v14.super_class = IMMessagePartDescriptor;
  v10 = [(IMMessagePartDescriptor *)&v14 init];
  if (v10)
  {
    v11 = [bodyCopy copy];
    messagePartBody = v10->_messagePartBody;
    v10->_messagePartBody = v11;

    v10->_messagePartRange.location = location;
    v10->_messagePartRange.length = length;
    v10->_messagePartIndex = index;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(IMMessagePartDescriptor *)self isEqualToMessagePart:equalCopy ignoringRange:0];

  return v5;
}

- (BOOL)isEqualToMessagePart:(id)part ignoringRange:(BOOL)range
{
  partCopy = part;
  if (range || (v7 = -[IMMessagePartDescriptor messagePartRange](self, "messagePartRange"), v9 = v8, v11 = 0, v7 == [partCopy messagePartRange]) && v9 == v10)
  {
    messagePartIndex = [(IMMessagePartDescriptor *)self messagePartIndex];
    if (messagePartIndex == [partCopy messagePartIndex])
    {
      messagePartBody = [(IMMessagePartDescriptor *)self messagePartBody];
      messagePartBody2 = [partCopy messagePartBody];
      v15 = messagePartBody;
      v16 = messagePartBody2;
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

- (id)messagePartGUIDForMessageGUID:(id)d
{
  dCopy = d;
  v5 = [IMMessagePartGUID alloc];
  v6 = +[IMMessagePartDescriptor defaultPrefix];
  v7 = [(IMMessagePartGUID *)v5 initWithMessageGUID:dCopy prefix:v6 partNumber:[(IMMessagePartDescriptor *)self messagePartIndex]];

  return v7;
}

- (NSArray)links
{
  p_links = &self->_links;
  links = self->_links;
  if (!links)
  {
    __im_dataDetectedURLsFromAttributes = [(NSAttributedString *)self->_messagePartBody __im_dataDetectedURLsFromAttributes];
    v6 = __im_dataDetectedURLsFromAttributes;
    if (__im_dataDetectedURLsFromAttributes)
    {
      v7 = __im_dataDetectedURLsFromAttributes;
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
    links = [(IMMessagePartDescriptor *)self links];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [links countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(links);
          }

          v10 = [IMMapURLLocationInfo locationInfoFromURL:*(*(&v14 + 1) + 8 * v9)];
          if (v10)
          {
            [v4 addObject:v10];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [links countByEnumeratingWithState:&v14 objects:v18 count:16];
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
    string = [(NSAttributedString *)self->_messagePartBody string];
    v4 = [string isEqualToString:*MEMORY[0x1E69A5F00]];

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
    array = [v8 array];
    v10 = self->_fileTransferGUIDsInMessagePartText;
    self->_fileTransferGUIDsInMessagePartText = array;

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