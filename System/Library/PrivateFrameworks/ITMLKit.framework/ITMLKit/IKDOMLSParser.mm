@interface IKDOMLSParser
+ (id)_dataFromInput:(id)a3;
- (id)parse:(id)a3;
- (id)parseWithContext:(id)a3 :(id)a4 :(int64_t)a5;
@end

@implementation IKDOMLSParser

- (id)parse:(id)a3
{
  v4 = a3;
  v5 = [v4 stringData];
  if (v5)
  {
  }

  else
  {
    v6 = [v4 byteStream];

    if (!v6)
    {
      v10 = @"Input not specified";
      goto LABEL_8;
    }
  }

  v7 = [IKDOMDocument alloc];
  v8 = [(IKJSObject *)self appContext];
  v15 = 0;
  v6 = [(IKDOMDocument *)v7 initWithAppContext:v8 input:v4 error:&v15];
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
    v11 = [(IKJSObject *)self appContext];
    v12 = [(IKJSObject *)self appContext];
    v13 = [IKDOMLSException exceptionWithAppContext:v12 code:81];
    [v11 setException:v13 withErrorMessage:v10];
  }

  return v6;
}

- (id)parseWithContext:(id)a3 :(id)a4 :(int64_t)a5
{
  v66 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [v9 parentNode];
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
      v15 = [(IKJSObject *)self appContext];
      v16 = [(IKJSObject *)self appContext];
      v17 = [IKDOMException exceptionWithAppContext:v16 code:3];
      v18 = MEMORY[0x277CCACA8];
      v19 = [v9 nodeName];
      v20 = [v18 stringWithFormat:@"Invalid action: %ld on node: %@", a5, v19];
      [v15 setException:v17 withErrorMessage:v20];

      v21 = 0;
      goto LABEL_11;
    }
  }

  if ((v14 & isKindOfClass & 1) != 0 || (a5 - 3) <= 0xFFFFFFFFFFFFFFFDLL && v13 & 1 | (v10 == 0))
  {
    goto LABEL_10;
  }

  v24 = [objc_opt_class() _dataFromInput:v8];
  if (v24)
  {
    v25 = v24;
    v26 = [v9 ownerDocument];
    v27 = [v26 nodePtr];
    lst = 0;
    v28 = xmlNewDocNode(v27, 0, "fake", 0);
    xmlSetGenericErrorFunc(*MEMORY[0x277D85DF8], MEMORY[0x277D85E30]);
    node = v28;
    if (xmlParseInNodeContext(v28, [v25 bytes], objc_msgSend(v25, "length"), 4096, &lst) == XML_ERR_INVALID_CHAR)
    {
      v29 = [v8 stringData];

      if (v29)
      {
        v30 = [v8 stringData];
        v31 = [v30 ik_stringByTrimmingControlChars];
        [v31 dataUsingEncoding:4];
        v32 = v57 = v26;

        xmlParseInNodeContext(node, [v32 bytes], objc_msgSend(v32, "length"), 4096, &lst);
        v25 = v32;
        v26 = v57;
      }
    }

    xmlSetGenericErrorFunc(0, 0);
    if (xmlGetLastError())
    {
      v33 = [(IKJSObject *)self appContext];
      v34 = [(IKJSObject *)self appContext];
      v35 = [IKDOMLSException exceptionWithAppContext:v34 code:81];
      [v33 setException:v35 withErrorMessage:@"XML parse failure"];
      v21 = 0;
LABEL_56:

      xmlSetTreeDoc(node, 0);
      xmlFreeNode(node);

      goto LABEL_57;
    }

    v58 = v26;
    for (i = xmlNewDocFragment(v27); ; xmlAddChild(i, v41))
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
    v42 = [(IKJSObject *)self appContext];
    v56 = [IKDOMNode nodeWithAppContext:v42 nodePtr:i];

    if (i->children)
    {
      v43 = [(IKJSObject *)self appContext];
      v21 = [IKDOMNode nodeWithAppContext:v43 nodePtr:i->children];
    }

    else
    {
      v21 = 0;
    }

    if ((a5 - 1) >= 2)
    {
      v44 = v10;
    }

    else
    {
      v44 = v9;
    }

    v34 = v44;
    v35 = 0;
    if (a5 <= 2)
    {
      if (a5 != 1)
      {
        v45 = a5 == 2;
        v33 = v56;
        if (v45)
        {
          v62 = 0u;
          v63 = 0u;
          v60 = 0u;
          v61 = 0u;
          v48 = [v9 childNodesAsArray];
          v49 = [v48 countByEnumeratingWithState:&v60 objects:v65 count:16];
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
                  objc_enumerationMutation(v48);
                }

                v53 = [v34 performDOMOperation:2 newNode:0 refNode:*(*(&v60 + 1) + 8 * j)];
              }

              v50 = [v48 countByEnumeratingWithState:&v60 objects:v65 count:16];
            }

            while (v50);
          }

          v33 = v56;
          v35 = [v34 performDOMOperation:0 newNode:v56 refNode:0];
          v26 = v58;
        }

        goto LABEL_55;
      }

      v46 = v9;
      v47 = 0;
      v33 = v56;
      v54 = v56;
      v55 = 0;
      goto LABEL_54;
    }

    if (a5 == 3)
    {
      v46 = v10;
      v47 = 1;
    }

    else
    {
      if (a5 != 4)
      {
        v45 = a5 == 5;
        v33 = v56;
        if (!v45)
        {
          goto LABEL_55;
        }

        v46 = v10;
        v47 = 2;
        goto LABEL_52;
      }

      v46 = v10;
      v47 = 0;
    }

    v33 = v56;
LABEL_52:
    v54 = v33;
    v55 = v9;
LABEL_54:
    v35 = [v46 performDOMOperation:v47 newNode:v54 refNode:v55];
LABEL_55:
    [v34 childrenUpdatedWithUpdatedChildNodes:v35 notify:1];
    goto LABEL_56;
  }

  v37 = [(IKJSObject *)self appContext];
  v38 = [(IKJSObject *)self appContext];
  v39 = [IKDOMLSException exceptionWithAppContext:v38 code:81];
  [v37 setException:v39 withErrorMessage:@"Input not specified"];

  v21 = 0;
  v25 = 0;
LABEL_57:

LABEL_11:
  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

+ (id)_dataFromInput:(id)a3
{
  v3 = a3;
  v4 = [v3 byteStream];

  if (v4)
  {
    v5 = [v3 byteStream];
  }

  else
  {
    v5 = [v3 stringData];

    if (v5)
    {
      v6 = [v3 stringData];
      v5 = [v6 dataUsingEncoding:4];
    }
  }

  return v5;
}

@end