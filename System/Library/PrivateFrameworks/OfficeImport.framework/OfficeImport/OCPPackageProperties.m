@interface OCPPackageProperties
- (void)readFromAppXml:(_xmlDoc *)a3;
- (void)readFromCoreXml:(_xmlDoc *)a3;
- (void)readFromCoreXml:(_xmlDoc *)a3 appXml:(_xmlDoc *)a4;
@end

@implementation OCPPackageProperties

- (void)readFromCoreXml:(_xmlDoc *)a3
{
  RootElement = xmlDocGetRootElement(a3);
  v6 = xmlSearchNsByHref(a3, RootElement, "http://schemas.openxmlformats.org/package/2006/metadata/core-properties");
  if (!v6)
  {
    [OCPException raise:@"OCPPackagePropertiesError" format:@"Could not find XML namespace"];
  }

  v7 = xmlSearchNsByHref(a3, RootElement, "http://purl.org/dc/elements/1.1/");
  if (!v7)
  {
    children = RootElement->children;
    if (!children)
    {
      goto LABEL_10;
    }

    do
    {
      v9 = xmlSearchNsByHref(a3, children, "http://purl.org/dc/elements/1.1/");
      children = children->next;
      if (children)
      {
        v10 = v9 == 0;
      }

      else
      {
        v10 = 0;
      }
    }

    while (v10);
    v7 = v9;
    if (!v9)
    {
LABEL_10:
      [OCPException raise:@"OCPPackagePropertiesError" format:@"Could not find XML namespace"];
      v7 = 0;
    }
  }

  if (!RootElement || (ns = RootElement->ns, ns != v6) && (!v6 || !ns || (href = ns->href) == 0 || (v13 = v6->href) == 0 || !xmlStrEqual(href, v13)) || !xmlStrEqual(RootElement->name, "coreProperties"))
  {
    [OCPException raise:@"OCPPackagePropertiesError" format:@"Could not find root node"];
  }

  v14 = RootElement->children;
  if (v14)
  {
    while (v14->type != XML_ELEMENT_NODE)
    {
LABEL_42:
      v14 = v14->next;
      if (!v14)
      {
        goto LABEL_43;
      }
    }

    v15 = v14->ns;
    if (v15 == v6)
    {
      goto LABEL_28;
    }

    if (v6)
    {
      if (v15)
      {
        v16 = v15->href;
        if (v16)
        {
          v17 = v6->href;
          if (v17)
          {
            if (xmlStrEqual(v16, v17))
            {
LABEL_28:
              p_mKeywords = &self->mKeywords;
              if (!xmlStrEqual(v14->name, "keywords"))
              {
                goto LABEL_42;
              }

              goto LABEL_41;
            }

            v15 = v14->ns;
          }
        }
      }
    }

    if (v15 != v7)
    {
      if (!v7)
      {
        goto LABEL_42;
      }

      if (!v15)
      {
        goto LABEL_42;
      }

      v19 = v15->href;
      if (!v19)
      {
        goto LABEL_42;
      }

      v20 = v7->href;
      if (!v20 || !xmlStrEqual(v19, v20))
      {
        goto LABEL_42;
      }
    }

    p_mKeywords = &self->mCreator;
    if (!xmlStrEqual(v14->name, "creator"))
    {
      p_mKeywords = &self->mDescription;
      if (!xmlStrEqual(v14->name, "description"))
      {
        p_mKeywords = &self->mTitle;
        if (!xmlStrEqual(v14->name, "title"))
        {
          p_mKeywords = &self->mSubject;
          if (!xmlStrEqual(v14->name, "subject"))
          {
            goto LABEL_42;
          }
        }
      }
    }

LABEL_41:
    v21 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initWithContentOfXmlNode:v14];
    v22 = *p_mKeywords;
    *p_mKeywords = v21;

    goto LABEL_42;
  }

LABEL_43:
  if (!self->mCreator)
  {
    v23 = objc_alloc_init(MEMORY[0x277CCACA8]);
    mCreator = self->mCreator;
    self->mCreator = v23;
  }

  if (!self->mDescription)
  {
    v25 = objc_alloc_init(MEMORY[0x277CCACA8]);
    mDescription = self->mDescription;
    self->mDescription = v25;
  }

  if (!self->mKeywords)
  {
    v27 = objc_alloc_init(MEMORY[0x277CCACA8]);
    mKeywords = self->mKeywords;
    self->mKeywords = v27;
  }

  if (!self->mTitle)
  {
    v29 = objc_alloc_init(MEMORY[0x277CCACA8]);
    mTitle = self->mTitle;
    self->mTitle = v29;
  }
}

- (void)readFromAppXml:(_xmlDoc *)a3
{
  if (!a3)
  {
    return;
  }

  RootElement = xmlDocGetRootElement(a3);
  v6 = xmlSearchNsByHref(a3, RootElement, "http://schemas.openxmlformats.org/officeDocument/2006/extended-properties");
  if (!v6)
  {
    v7 = xmlSearchNsByHref(a3, RootElement, "http://purl.oclc.org/ooxml/officeDocument/extendedProperties");
    if (v7)
    {
      if (RootElement)
      {
        goto LABEL_7;
      }
    }

    else
    {
      [OCPException raise:@"OCPPackagePropertiesError" format:@"Could not find XML namespace"];
      if (RootElement)
      {
        goto LABEL_7;
      }
    }

LABEL_16:
    [OCPException raise:@"OCPPackagePropertiesError" format:@"Could not find root App node"];
    goto LABEL_17;
  }

  v7 = v6;
  if (!RootElement)
  {
    goto LABEL_16;
  }

LABEL_7:
  ns = RootElement->ns;
  if (ns != v7)
  {
    if (!v7)
    {
      goto LABEL_16;
    }

    if (!ns)
    {
      goto LABEL_16;
    }

    href = ns->href;
    if (!href)
    {
      goto LABEL_16;
    }

    v10 = v7->href;
    if (!v10 || !xmlStrEqual(href, v10))
    {
      goto LABEL_16;
    }
  }

  if (!xmlStrEqual(RootElement->name, "Properties"))
  {
    goto LABEL_16;
  }

LABEL_17:
  for (i = RootElement->children; i; i = i->next)
  {
    if (i->type == XML_ELEMENT_NODE)
    {
      v12 = i->ns;
      if (v12 == v7 || v7 && v12 && (v13 = v12->href) != 0 && (v14 = v7->href) != 0 && xmlStrEqual(v13, v14))
      {
        p_mAppVersion = &self->mAppVersion;
        if (xmlStrEqual(i->name, "AppVersion") || (p_mAppVersion = &self->mCompany, xmlStrEqual(i->name, "Company")))
        {
          v16 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initWithContentOfXmlNode:i];
          v17 = *p_mAppVersion;
          *p_mAppVersion = v16;
        }
      }
    }
  }
}

- (void)readFromCoreXml:(_xmlDoc *)a3 appXml:(_xmlDoc *)a4
{
  [(OCPPackageProperties *)self readFromCoreXml:a3];

  [(OCPPackageProperties *)self readFromAppXml:a4];
}

@end