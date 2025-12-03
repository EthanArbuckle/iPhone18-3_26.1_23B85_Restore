@interface MFMessageLibrary
- (MFMessageLibrary)initWithPath:(id)path;
- (id)accountForMessage:(id)message;
- (id)dataProvider;
- (id)duplicateMessages:(id)messages newRemoteIDs:(id)ds forMailbox:(id)mailbox setFlags:(unint64_t)flags clearFlags:(unint64_t)clearFlags messageFlagsForMessages:(id)forMessages createNewCacheFiles:(BOOL)files;
- (id)getDetailsForMessages:(unint64_t)messages absoluteBottom:(unint64_t)bottom topOfDesiredRange:(unint64_t)range range:(_NSRange *)a6 fromMailbox:(id)mailbox;
- (void)dealloc;
- (void)postFlagsChangedForMessages:(id)messages flags:(id)flags oldFlagsByMessage:(id)message;
- (void)postOldFlags:(unint64_t)flags newFlags:(unint64_t)newFlags forMessage:(id)message;
@end

@implementation MFMessageLibrary

- (MFMessageLibrary)initWithPath:(id)path
{
  v6.receiver = self;
  v6.super_class = MFMessageLibrary;
  v4 = [(MFMessageLibrary *)&v6 init];
  if (v4)
  {
    v4->_path = path;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFMessageLibrary;
  [(MFMessageLibrary *)&v3 dealloc];
}

- (id)duplicateMessages:(id)messages newRemoteIDs:(id)ds forMailbox:(id)mailbox setFlags:(unint64_t)flags clearFlags:(unint64_t)clearFlags messageFlagsForMessages:(id)forMessages createNewCacheFiles:(BOOL)files
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  LOWORD(v18) = files;
  [(MFMessageLibrary *)self addMessages:messages withMailbox:mailbox fetchBodies:0 newMessagesByOldMessage:dictionary remoteIDs:ds setFlags:flags clearFlags:clearFlags messageFlagsForMessages:forMessages copyFiles:v18 addPOPUIDs:0 dataSectionsByMessage:?];
  return dictionary;
}

- (id)getDetailsForMessages:(unint64_t)messages absoluteBottom:(unint64_t)bottom topOfDesiredRange:(unint64_t)range range:(_NSRange *)a6 fromMailbox:(id)mailbox
{
  if (a6)
  {
    a6->location = bottom;
    a6->length = range - bottom;
  }

  return 0;
}

- (void)postFlagsChangedForMessages:(id)messages flags:(id)flags oldFlagsByMessage:(id)message
{
  if ([messages count])
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v9 setObject:messages forKey:@"messages"];
    if (message)
    {
      [v9 setObject:message forKey:@"oldFlagsByMessage"];
    }

    if (flags)
    {
      [v9 setObject:flags forKey:@"flags"];
    }

    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  }
}

- (void)postOldFlags:(unint64_t)flags newFlags:(unint64_t)newFlags forMessage:(id)message
{
  v29[1] = *MEMORY[0x277D85DE8];
  if (flags == newFlags)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEAC0]);
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v8 = v10;
    if ((flags & 1) != (newFlags & 1))
    {
      if (newFlags)
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      [v10 setObject:v11 forKey:@"MessageIsRead"];
    }

    v12 = newFlags ^ flags;
    if ((newFlags ^ flags) >= 2)
    {
      if (((flags >> 1) & 1) != ((newFlags >> 1) & 1))
      {
        if ((newFlags & 2) != 0)
        {
          v13 = @"YES";
        }

        else
        {
          v13 = @"NO";
        }

        [v8 setObject:v13 forKey:@"MessageIsDeleted"];
      }

      if (v12 >= 4)
      {
        if (((flags >> 2) & 1) != ((newFlags >> 2) & 1))
        {
          if ((newFlags & 4) != 0)
          {
            v14 = @"YES";
          }

          else
          {
            v14 = @"NO";
          }

          [v8 setObject:v14 forKey:@"MessageWasRepliedTo"];
        }

        if (v12 >= 8)
        {
          if (((flags >> 3) & 1) != ((newFlags >> 3) & 1))
          {
            if ((newFlags & 8) != 0)
            {
              v15 = @"YES";
            }

            else
            {
              v15 = @"NO";
            }

            [v8 setObject:v15 forKey:@"MessageIsEncrypted"];
          }

          if (v12 >= 0x10)
          {
            if (((flags >> 23) & 1) != ((newFlags >> 23) & 1))
            {
              if ((newFlags & 0x800000) != 0)
              {
                v16 = @"YES";
              }

              else
              {
                v16 = @"NO";
              }

              [v8 setObject:v16 forKey:@"MessageIsSigned"];
            }

            if ((v12 & 0xFFFFFFFFFF7FFFF0) != 0)
            {
              if (((flags >> 24) & 1) != ((newFlags >> 24) & 1))
              {
                if ((newFlags & 0x1000000) != 0)
                {
                  v17 = @"YES";
                }

                else
                {
                  v17 = @"NO";
                }

                [v8 setObject:v17 forKey:@"MessageSenderIsVIP"];
              }

              if ((v12 & 0xFFFFFFFFFE7FFFF0) != 0)
              {
                if (((flags >> 8) & 1) != ((newFlags >> 8) & 1))
                {
                  if ((newFlags & 0x100) != 0)
                  {
                    v18 = @"YES";
                  }

                  else
                  {
                    v18 = @"NO";
                  }

                  [v8 setObject:v18 forKey:@"MessageWasForwarded"];
                }

                if ((v12 & 0xFFFFFFFFFE7FFEF0) != 0)
                {
                  if (((flags >> 9) & 1) != ((newFlags >> 9) & 1))
                  {
                    if ((newFlags & 0x200) != 0)
                    {
                      v19 = @"YES";
                    }

                    else
                    {
                      v19 = @"NO";
                    }

                    [v8 setObject:v19 forKey:@"MessageWasRedirected"];
                  }

                  if ((v12 & 0xFFFFFFFFFE7FFCF0) != 0)
                  {
                    if (((flags >> 4) & 1) != ((newFlags >> 4) & 1))
                    {
                      if ((newFlags & 0x10) != 0)
                      {
                        v20 = @"YES";
                      }

                      else
                      {
                        v20 = @"NO";
                      }

                      [v8 setObject:v20 forKey:@"MessageIsFlagged"];
                    }

                    if ((v12 & 0xFFFFFFFFFE7FFCE0) != 0)
                    {
                      if (((flags >> 30) & 1) != ((newFlags >> 30) & 1))
                      {
                        if ((newFlags & 0x40000000) != 0)
                        {
                          v21 = @"YES";
                        }

                        else
                        {
                          v21 = @"NO";
                        }

                        [v8 setObject:v21 forKey:@"MessageHighlightTextInTOC"];
                      }

                      if ((v12 & 0xFFFFFFFFBE7FFCE0) != 0)
                      {
                        if ((WORD1(flags) & 7) != (WORD1(newFlags) & 7))
                        {
                          [v8 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInt:"), @"MessagePriorityLevel"}];
                        }

                        v22 = newFlags & 0xFFFFFFFFBE78FCE0;
                        if ((flags & 0xFFFFFFFFBE78FCE0) != v22)
                        {
                          v23 = MFMessageFlagsFontSizeDelta(flags & 0xFFFFFFFFBE78FCE0);
                          v24 = MFMessageFlagsFontSizeDelta(v22);
                          if (v23 != v24)
                          {
                            [v8 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", v24), @"MessageFontSizeDelta"}];
                          }

                          if ((v12 & 0xFFFFFFFFA278FCE0) != 0)
                          {

                            v8 = 0;
LABEL_72:
                            v29[0] = message;
                            v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
                            v28 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{flags, message}];
                            -[MFMessageLibrary postFlagsChangedForMessages:flags:oldFlagsByMessage:](self, "postFlagsChangedForMessages:flags:oldFlagsByMessage:", v25, v8, [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1]);
                            goto LABEL_73;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if (!v8 || [v8 count])
  {
    goto LABEL_72;
  }

LABEL_73:

  v26 = *MEMORY[0x277D85DE8];
}

- (id)accountForMessage:(id)message
{
  v3 = [(MFMessageLibrary *)self mailboxUidForMessage:message];

  return [v3 account];
}

- (id)dataProvider
{
  result = self->_attachmentDataProvider;
  if (!result)
  {
    result = [[MFAttachmentLibraryDataProvider alloc] initWithLibrary:self];
    self->_attachmentDataProvider = result;
  }

  return result;
}

@end