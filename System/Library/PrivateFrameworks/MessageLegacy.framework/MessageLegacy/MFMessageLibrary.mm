@interface MFMessageLibrary
- (MFMessageLibrary)initWithPath:(id)a3;
- (id)accountForMessage:(id)a3;
- (id)dataProvider;
- (id)duplicateMessages:(id)a3 newRemoteIDs:(id)a4 forMailbox:(id)a5 setFlags:(unint64_t)a6 clearFlags:(unint64_t)a7 messageFlagsForMessages:(id)a8 createNewCacheFiles:(BOOL)a9;
- (id)getDetailsForMessages:(unint64_t)a3 absoluteBottom:(unint64_t)a4 topOfDesiredRange:(unint64_t)a5 range:(_NSRange *)a6 fromMailbox:(id)a7;
- (void)dealloc;
- (void)postFlagsChangedForMessages:(id)a3 flags:(id)a4 oldFlagsByMessage:(id)a5;
- (void)postOldFlags:(unint64_t)a3 newFlags:(unint64_t)a4 forMessage:(id)a5;
@end

@implementation MFMessageLibrary

- (MFMessageLibrary)initWithPath:(id)a3
{
  v6.receiver = self;
  v6.super_class = MFMessageLibrary;
  v4 = [(MFMessageLibrary *)&v6 init];
  if (v4)
  {
    v4->_path = a3;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFMessageLibrary;
  [(MFMessageLibrary *)&v3 dealloc];
}

- (id)duplicateMessages:(id)a3 newRemoteIDs:(id)a4 forMailbox:(id)a5 setFlags:(unint64_t)a6 clearFlags:(unint64_t)a7 messageFlagsForMessages:(id)a8 createNewCacheFiles:(BOOL)a9
{
  v16 = [MEMORY[0x277CBEB38] dictionary];
  LOWORD(v18) = a9;
  [(MFMessageLibrary *)self addMessages:a3 withMailbox:a5 fetchBodies:0 newMessagesByOldMessage:v16 remoteIDs:a4 setFlags:a6 clearFlags:a7 messageFlagsForMessages:a8 copyFiles:v18 addPOPUIDs:0 dataSectionsByMessage:?];
  return v16;
}

- (id)getDetailsForMessages:(unint64_t)a3 absoluteBottom:(unint64_t)a4 topOfDesiredRange:(unint64_t)a5 range:(_NSRange *)a6 fromMailbox:(id)a7
{
  if (a6)
  {
    a6->location = a4;
    a6->length = a5 - a4;
  }

  return 0;
}

- (void)postFlagsChangedForMessages:(id)a3 flags:(id)a4 oldFlagsByMessage:(id)a5
{
  if ([a3 count])
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v9 setObject:a3 forKey:@"messages"];
    if (a5)
    {
      [v9 setObject:a5 forKey:@"oldFlagsByMessage"];
    }

    if (a4)
    {
      [v9 setObject:a4 forKey:@"flags"];
    }

    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  }
}

- (void)postOldFlags:(unint64_t)a3 newFlags:(unint64_t)a4 forMessage:(id)a5
{
  v29[1] = *MEMORY[0x277D85DE8];
  if (a3 == a4)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEAC0]);
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v8 = v10;
    if ((a3 & 1) != (a4 & 1))
    {
      if (a4)
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      [v10 setObject:v11 forKey:@"MessageIsRead"];
    }

    v12 = a4 ^ a3;
    if ((a4 ^ a3) >= 2)
    {
      if (((a3 >> 1) & 1) != ((a4 >> 1) & 1))
      {
        if ((a4 & 2) != 0)
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
        if (((a3 >> 2) & 1) != ((a4 >> 2) & 1))
        {
          if ((a4 & 4) != 0)
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
          if (((a3 >> 3) & 1) != ((a4 >> 3) & 1))
          {
            if ((a4 & 8) != 0)
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
            if (((a3 >> 23) & 1) != ((a4 >> 23) & 1))
            {
              if ((a4 & 0x800000) != 0)
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
              if (((a3 >> 24) & 1) != ((a4 >> 24) & 1))
              {
                if ((a4 & 0x1000000) != 0)
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
                if (((a3 >> 8) & 1) != ((a4 >> 8) & 1))
                {
                  if ((a4 & 0x100) != 0)
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
                  if (((a3 >> 9) & 1) != ((a4 >> 9) & 1))
                  {
                    if ((a4 & 0x200) != 0)
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
                    if (((a3 >> 4) & 1) != ((a4 >> 4) & 1))
                    {
                      if ((a4 & 0x10) != 0)
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
                      if (((a3 >> 30) & 1) != ((a4 >> 30) & 1))
                      {
                        if ((a4 & 0x40000000) != 0)
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
                        if ((WORD1(a3) & 7) != (WORD1(a4) & 7))
                        {
                          [v8 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInt:"), @"MessagePriorityLevel"}];
                        }

                        v22 = a4 & 0xFFFFFFFFBE78FCE0;
                        if ((a3 & 0xFFFFFFFFBE78FCE0) != v22)
                        {
                          v23 = MFMessageFlagsFontSizeDelta(a3 & 0xFFFFFFFFBE78FCE0);
                          v24 = MFMessageFlagsFontSizeDelta(v22);
                          if (v23 != v24)
                          {
                            [v8 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", v24), @"MessageFontSizeDelta"}];
                          }

                          if ((v12 & 0xFFFFFFFFA278FCE0) != 0)
                          {

                            v8 = 0;
LABEL_72:
                            v29[0] = a5;
                            v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
                            v28 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{a3, a5}];
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

- (id)accountForMessage:(id)a3
{
  v3 = [(MFMessageLibrary *)self mailboxUidForMessage:a3];

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