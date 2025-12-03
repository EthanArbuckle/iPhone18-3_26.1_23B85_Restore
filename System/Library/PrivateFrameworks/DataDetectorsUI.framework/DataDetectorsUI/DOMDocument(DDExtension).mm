@interface DOMDocument(DDExtension)
- (void)dd_resetResults;
@end

@implementation DOMDocument(DDExtension)

- (void)dd_resetResults
{
  webFrame = [self webFrame];
  selectedDOMRange = [webFrame selectedDOMRange];

  startContainer = [selectedDOMRange startContainer];
  startOffset = [selectedDOMRange startOffset];
  endContainer = [selectedDOMRange endContainer];
  endOffset = [selectedDOMRange endOffset];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  v8 = [self getElementsByTagName:@"A"];
  v9 = _DDArrayWithList(v8);

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __43__DOMDocument_DDExtension__dd_resetResults__block_invoke;
  v16[3] = &unk_278291208;
  v10 = startContainer;
  v17 = v10;
  v11 = endContainer;
  v18 = v11;
  v19 = &v20;
  _DDRemoveResultLinksFromArrayOfAnchors(v9, v16);
  if (*(v21 + 24) == 1)
  {
    if (selectedDOMRange)
    {
      webFrame2 = [self webFrame];
      selectedDOMRange2 = [webFrame2 selectedDOMRange];

      if (!selectedDOMRange2)
      {
        createRange = [self createRange];
        [createRange setStart:v10 offset:startOffset];
        [createRange setEnd:v11 offset:endOffset];
        webFrame3 = [self webFrame];
        [webFrame3 setSelectedDOMRange:createRange affinity:0 closeTyping:0];
      }
    }
  }

  _Block_object_dispose(&v20, 8);
}

@end