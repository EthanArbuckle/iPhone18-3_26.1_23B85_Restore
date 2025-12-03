@interface IKDOMLSParser
+ (id)_dataFromInput:(id)input;
- (id)parse:(id)parse;
- (id)parseWithContext:(id)context :(id)a4 :(int64_t)a5;
@end

@implementation IKDOMLSParser

- (id)parse:(id)parse
{
  parseCopy = parse;
  stringData = [parseCopy stringData];
  if (stringData)
  {
  }

  else
  {
    byteStream = [parseCopy byteStream];

    if (!byteStream)
    {
      v10 = @"Input not specified";
      goto LABEL_8;
    }
  }

  v7 = [IKDOMDocument alloc];
  appContext = [(IKJSObject *)self appContext];
  v15 = 0;
  byteStream = [(IKDOMDocument *)v7 initWithAppContext:appContext input:parseCopy error:&v15];
  v9 = v15;

  if (v9)
  {
    v10 = [v9 description];
  }

  else
  {
    v10 = 0;
  }

LABEL_8:
  if ([(__CFString *)v10 length])
  {
    appContext2 = [(IKJSObject *)self appContext];
    appContext3 = [(IKJSObject *)self appContext];
    v13 = [IKDOMLSException exceptionWithAppContext:appContext3 code:81];
    [appContext2 setException:v13 withErrorMessage:v10];
  }

  return byteStream;
}

- (id)parseWithContext:(id)context :(id)a4 :(int64_t)a5
{
  v66 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v9 = a4;
  parentNode = [v9 parentNode];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  v12 = objc_opt_isKindOfClass();
  if (!v9)
  {
    goto LABEL_10;
  }

  v13 = v12;
  if (![v9 nodePtr])
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v14 = a5 != 2;
  }

  else
  {
    objc_opt_class();
    v36 = objc_opt_isKindOfClass();
    v14 = a5 != 2;
    if ((v36 & 1) == 0)
    {
LABEL_10:
      appContext = [(IKJSObject *)self appContext];
      appContext2 = [(IKJSObject *)self appContext];
      v17 = [IKDOMException exceptionWithAppContext:appContext2 code:3];
      v18 = MEMORY[0x277CCACA8];
      nodeName = [v9 nodeName];
      v20 = [v18 stringWithFormat:@"Invalid action: %ld on node: %@", a5, nodeName];
      [appContext setException:v17 withErrorMessage:v20];

      v21 = 0;
      goto LABEL_11;
    }
  }

  if ((v14 & isKindOfClass & 1) != 0 || (a5 - 3) <= 0xFFFFFFFFFFFFFFFDLL && v13 & 1 | (parentNode == 0))
  {
    goto LABEL_10;
  }

  v24 = [objc_opt_class() _dataFromInput:contextCopy];
  if (v24)
  {
    v25 = v24;
    ownerDocument = [v9 ownerDocument];
    nodePtr = [ownerDocument nodePtr];
    lst = 0;
    v28 = xmlNewDocNode(nodePtr, 0, "fake", 0);
    xmlSetGenericErrorFunc(*MEMORY[0x277D85DF8], MEMORY[0x277D85E30]);
    node = v28;
    if (xmlParseInNodeContext(v28, [v25 bytes], objc_msgSend(v25, "length"), 4096, &lst) == XML_ERR_INVALID_CHAR)
    {
      stringData = [contextCopy stringData];

      if (stringData)
      {
        stringData2 = [contextCopy stringData];
        ik_stringByTrimmingControlChars = [stringData2 ik_stringByTrimmingControlChars];
        [ik_stringByTrimmingControlChars dataUsingEncoding:4];
        v32 = v57 = ownerDocument;

        xmlParseInNodeContext(node, [v32 bytes], objc_msgSend(v32, "length"), 4096, &lst);
        v25 = v32;
        ownerDocument = v57;
      }
    }

    xmlSetGenericErrorFunc(0, 0);
    if (xmlGetLastError())
    {
      appContext3 = [(IKJSObject *)self appContext];
      appContext4 = [(IKJSObject *)self appContext];
      v35 = [IKDOMLSException exceptionWithAppContext:appContext4 code:81];
      [appContext3 setException:v35 withErrorMessage:@"XML parse failure"];
      v21 = 0;
LABEL_56:

      xmlSetTreeDoc(node, 0);
      xmlFreeNode(node);

      goto LABEL_57;
    }

    v58 = ownerDocument;
    for (i = xmlNewDocFragment(nodePtr); ; xmlAddChild(i, v41))
    {
      v41 = lst;
      if (!lst)
      {
        break;
      }

      lst = lst->next;
      xmlUnlinkNode(v41);
    }

    IKXMLStripSpaces(i);
    appContext5 = [(IKJSObject *)self appContext];
    v56 = [IKDOMNode nodeWithAppContext:appContext5 nodePtr:i];

    if (i->children)
    {
      appContext6 = [(IKJSObject *)self appContext];
      v21 = [IKDOMNode nodeWithAppContext:appContext6 nodePtr:i->children];
    }

    else
    {
      v21 = 0;
    }

    if ((a5 - 1) >= 2)
    {
      v44 = parentNode;
    }

    else
    {
      v44 = v9;
    }

    appContext4 = v44;
    v35 = 0;
    if (a5 <= 2)
    {
      if (a5 != 1)
      {
        v45 = a5 == 2;
        appContext3 = v56;
        if (v45)
        {
          v62 = 0u;
          v63 = 0u;
          v60 = 0u;
          v61 = 0u;
          childNodesAsArray = [v9 childNodesAsArray];
          v49 = [childNodesAsArray countByEnumeratingWithState:&v60 objects:v65 count:16];
          if (v49)
          {
            v50 = v49;
            v51 = *v61;
            do
            {
              for (j = 0; j != v50; ++j)
              {
                if (*v61 != v51)
                {
                  objc_enumerationMutation(childNodesAsArray);
                }

                v53 = [appContext4 performDOMOperation:2 newNode:0 refNode:*(*(&v60 + 1) + 8 * j)];
              }

              v50 = [childNodesAsArray countByEnumeratingWithState:&v60 objects:v65 count:16];
            }

            while (v50);
          }

          appContext3 = v56;
          v35 = [appContext4 performDOMOperation:0 newNode:v56 refNode:0];
          ownerDocument = v58;
        }

        goto LABEL_55;
      }

      v46 = v9;
      v47 = 0;
      appContext3 = v56;
      v54 = v56;
      v55 = 0;
      goto LABEL_54;
    }

    if (a5 == 3)
    {
      v46 = parentNode;
      v47 = 1;
    }

    else
    {
      if (a5 != 4)
      {
        v45 = a5 == 5;
        appContext3 = v56;
        if (!v45)
        {
          goto LABEL_55;
        }

        v46 = parentNode;
        v47 = 2;
        goto LABEL_52;
      }

      v46 = parentNode;
      v47 = 0;
    }

    appContext3 = v56;
LABEL_52:
    v54 = appContext3;
    v55 = v9;
LABEL_54:
    v35 = [v46 performDOMOperation:v47 newNode:v54 refNode:v55];
LABEL_55:
    [appContext4 childrenUpdatedWithUpdatedChildNodes:v35 notify:1];
    goto LABEL_56;
  }

  appContext7 = [(IKJSObject *)self appContext];
  appContext8 = [(IKJSObject *)self appContext];
  v39 = [IKDOMLSException exceptionWithAppContext:appContext8 code:81];
  [appContext7 setException:v39 withErrorMessage:@"Input not specified"];

  v21 = 0;
  v25 = 0;
LABEL_57:

LABEL_11:
  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

+ (id)_dataFromInput:(id)input
{
  inputCopy = input;
  byteStream = [inputCopy byteStream];

  if (byteStream)
  {
    byteStream2 = [inputCopy byteStream];
  }

  else
  {
    byteStream2 = [inputCopy stringData];

    if (byteStream2)
    {
      stringData = [inputCopy stringData];
      byteStream2 = [stringData dataUsingEncoding:4];
    }
  }

  return byteStream2;
}

@end