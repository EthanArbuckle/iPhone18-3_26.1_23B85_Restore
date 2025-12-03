@interface DYContextInfo
- (BOOL)supportsCapabilitiesOfGraphicsAPI:(id)i;
- (DYContextInfo)init;
- (DYContextInfo)initWithCoder:(id)coder;
- (DYContextInfo)initWithIdentifier:(unint64_t)identifier sharegroupIdentifier:(unint64_t)sharegroupIdentifier renderers:(id)renderers currentRendererIndex:(unsigned int)index api:(int)api;
- (NSString)debugDescription;
- (NSString)description;
- (NSString)descriptionForBugReport;
- (int)rendererType;
- (int)valueForLimit:(id)limit;
- (void)dealloc;
- (void)determineTextureUnitLimitsForRendererAtIndex:(unsigned int)index limits:(id *)limits;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateBufferTargets:(id)targets;
- (void)enumerateFramebufferAttachments:(id)attachments;
- (void)enumerateFramebufferColorAttachments:(id)attachments;
- (void)enumerateFramebufferDrawBuffers:(id)buffers;
- (void)enumerateTextureTargets:(id)targets;
@end

@implementation DYContextInfo

- (DYContextInfo)init
{
  [(DYContextInfo *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (DYContextInfo)initWithIdentifier:(unint64_t)identifier sharegroupIdentifier:(unint64_t)sharegroupIdentifier renderers:(id)renderers currentRendererIndex:(unsigned int)index api:(int)api
{
  if ([renderers count] <= index)
  {
    [DYContextInfo initWithIdentifier:sharegroupIdentifier:renderers:currentRendererIndex:api:];
  }

  v16.receiver = self;
  v16.super_class = DYContextInfo;
  v13 = [(DYContextInfo *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_identifier = identifier;
    v13->_sharegroupIdentifier = sharegroupIdentifier;
    v13->_renderers = [renderers copy];
    v14->_currentRendererIndex = index;
    v14->_api = api;
  }

  return v14;
}

- (DYContextInfo)initWithCoder:(id)coder
{
  if (self)
  {
    self->_identifier = [coder decodeInt64ForKey:@"identifier"];
    self->_sharegroupIdentifier = [coder decodeInt64ForKey:@"sharegroupIdentifier"];
    v5 = MEMORY[0x277CBEB98];
    v6 = objc_opt_class();
    self->_renderers = [coder decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, objc_opt_class(), 0), @"renderers"}];
    self->_currentRendererIndex = [coder decodeInt32ForKey:@"currentRendererIndex"];
    self->_api = [coder decodeInt32ForKey:@"api"];
    self->_debugLabel = [coder decodeObjectOfClass:objc_opt_class() forKey:@"debugLabel"];
  }

  return self;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeInt64:self->_identifier forKey:@"identifier"];
  [coder encodeInt64:self->_sharegroupIdentifier forKey:@"sharegroupIdentifier"];
  [coder encodeObject:self->_renderers forKey:@"renderers"];
  [coder encodeInt32:self->_currentRendererIndex forKey:@"currentRendererIndex"];
  [coder encodeInt32:self->_api forKey:@"api"];
  debugLabel = self->_debugLabel;

  [coder encodeObject:debugLabel forKey:@"debugLabel"];
}

- (NSString)debugDescription
{
  v3.receiver = self;
  v3.super_class = DYContextInfo;
  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@, %@\n\t_currentRendererIndex = %d\n\t_renderers = %@", -[DYContextInfo debugDescription](&v3, sel_debugDescription), -[DYContextInfo description](self, "description"), self->_currentRendererIndex, -[NSArray debugDescription](self->_renderers, "debugDescription")];
}

- (NSString)description
{
  api = self->_api;
  if (api > 4)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_27916F100[api];
  }

  v5.receiver = self;
  v5.super_class = DYContextInfo;
  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@ identifier=%llu, sharegroup identifier=%llu, api=%@, debug label=%@", -[DYContextInfo description](&v5, sel_description), self->_identifier, self->_sharegroupIdentifier, objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", v3), self->_debugLabel];
}

- (NSString)descriptionForBugReport
{
  renderers = self->_renderers;
  if (renderers && (currentRendererIndex = self->_currentRendererIndex, [(NSArray *)renderers count]> currentRendererIndex))
  {
    v5 = [(NSArray *)self->_renderers objectAtIndexedSubscript:self->_currentRendererIndex];

    return [v5 descriptionForBugReport];
  }

  else
  {

    return [(DYContextInfo *)self description];
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = DYContextInfo;
  [(DYContextInfo *)&v3 dealloc];
}

- (void)determineTextureUnitLimitsForRendererAtIndex:(unsigned int)index limits:(id *)limits
{
  v6 = [-[NSArray objectAtIndex:](self->_renderers objectAtIndex:{index), "limits"}];
  v7 = v6;
  api = self->_api;
  if ((api - 2) >= 3)
  {
    if (api)
    {
      if (api != 1)
      {
        return;
      }

      v10 = [objc_msgSend(v6 objectForKey:{@"GL_MAX_TEXTURE_UNITS", "unsignedIntValue"}];
      limits->var2 = v10;
      limits->var0 = v10;
      v11 = 34018;
      v12 = 12;
      v13 = 34018;
    }

    else
    {
      limits->var0 = [objc_msgSend(v6 objectForKey:{@"GL_MAX_TEXTURE_COORDS", "unsignedIntValue"}];
      limits->var2 = [objc_msgSend(v7 objectForKey:{@"GL_MAX_TEXTURE_UNITS", "unsignedIntValue"}];
      v10 = [objc_msgSend(v7 objectForKey:{@"GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS", "unsignedIntValue"}];
      v13 = 35661;
      v11 = 34929;
      v12 = 12;
    }
  }

  else
  {
    v9 = [objc_msgSend(v6 objectForKey:{@"GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS", "unsignedIntValue"}];
    v10 = 0;
    limits->var3 = v9;
    limits->var0 = 0;
    v11 = 35661;
    v12 = 8;
    v13 = 35661;
  }

  *(&limits->var0 + v12) = v10;
  limits->var1 = v11;
  limits->var4 = v13;
}

- (BOOL)supportsCapabilitiesOfGraphicsAPI:(id)i
{
  v28 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (api = self->_api, api == [i api]))
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    renderers = self->_renderers;
    v7 = [(NSArray *)renderers countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v23;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(renderers);
          }

          v11 = *(*(&v22 + 1) + 8 * i);
          v18 = 0u;
          v19 = 0u;
          v20 = 0u;
          v21 = 0u;
          renderers = [i renderers];
          v13 = [renderers countByEnumeratingWithState:&v18 objects:v26 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v19;
            while (2)
            {
              v16 = 0;
              do
              {
                if (*v19 != v15)
                {
                  objc_enumerationMutation(renderers);
                }

                if ([v11 supportsCapabilitiesOfRenderer:*(*(&v18 + 1) + 8 * v16)])
                {
                  LOBYTE(v7) = 1;
                  return v7;
                }

                ++v16;
              }

              while (v14 != v16);
              v14 = [renderers countByEnumeratingWithState:&v18 objects:v26 count:16];
              if (v14)
              {
                continue;
              }

              break;
            }
          }
        }

        v8 = [(NSArray *)renderers countByEnumeratingWithState:&v22 objects:v27 count:16];
        LOBYTE(v7) = 0;
      }

      while (v8);
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (int)valueForLimit:(id)limit
{
  v4 = [objc_msgSend(-[NSArray objectAtIndex:](self->_renderers objectAtIndex:{self->_currentRendererIndex), "limits"), "objectForKey:", limit}];
  if (v4)
  {

    return [v4 intValue];
  }

  else
  {
    if ([limit isEqualToString:@"GL_MAX_COLOR_ATTACHMENTS"])
    {
      return 1;
    }

    result = [limit isEqualToString:@"GL_MAX_DRAW_BUFFERS"];
    if (result)
    {
      return 1;
    }
  }

  return result;
}

- (void)enumerateBufferTargets:(id)targets
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v8 = 34962;
  std::vector<unsigned int>::push_back[abi:ne200100](&v9, &v8);
  v8 = 34963;
  std::vector<unsigned int>::push_back[abi:ne200100](&v9, &v8);
  api = self->_api;
  if ((api - 1) >= 2)
  {
    if ((api - 3) < 2)
    {
      v8 = 36662;
      std::vector<unsigned int>::push_back[abi:ne200100](&v9, &v8);
      v8 = 36663;
      std::vector<unsigned int>::push_back[abi:ne200100](&v9, &v8);
      v8 = 35982;
      std::vector<unsigned int>::push_back[abi:ne200100](&v9, &v8);
      v8 = 35345;
      std::vector<unsigned int>::push_back[abi:ne200100](&v9, &v8);
    }

    v8 = 35051;
    std::vector<unsigned int>::push_back[abi:ne200100](&v9, &v8);
    v8 = 35052;
    std::vector<unsigned int>::push_back[abi:ne200100](&v9, &v8);
    if (self->_api == 3)
    {
      v8 = 35882;
      std::vector<unsigned int>::push_back[abi:ne200100](&v9, &v8);
    }
  }

  v6 = v9;
  v7 = v10;
  if (v9 != v10)
  {
    do
    {
      (*(targets + 2))(targets, *v6++);
    }

    while (v6 != v7);
    v6 = v9;
  }

  if (v6)
  {
    v10 = v6;
    operator delete(v6);
  }
}

- (void)enumerateFramebufferAttachments:(id)attachments
{
  [(DYContextInfo *)self enumerateFramebufferColorAttachments:?];
  (*(attachments + 2))(attachments, 36096);
  v4 = *(attachments + 2);

  v4(attachments, 36128);
}

- (void)enumerateFramebufferColorAttachments:(id)attachments
{
  v4 = [(DYContextInfo *)self valueForLimit:@"GL_MAX_COLOR_ATTACHMENTS"];
  if (v4 >= 1)
  {
    v5 = v4;
    v6 = 36064;
    do
    {
      (*(attachments + 2))(attachments, v6);
      v6 = (v6 + 1);
      --v5;
    }

    while (v5);
  }
}

- (void)enumerateFramebufferDrawBuffers:(id)buffers
{
  v4 = [(DYContextInfo *)self valueForLimit:@"GL_MAX_DRAW_BUFFERS"];
  if (v4 >= 1)
  {
    v5 = v4;
    v6 = 34853;
    do
    {
      (*(buffers + 2))(buffers, v6);
      v6 = (v6 + 1);
      --v5;
    }

    while (v5);
  }
}

- (void)enumerateTextureTargets:(id)targets
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v5 = [(NSArray *)self->_renderers objectAtIndex:self->_currentRendererIndex];
  api = self->_api;
  if (api <= 1)
  {
    if (api)
    {
      if (api == 1)
      {
        v9 = 3553;
        std::vector<unsigned int>::push_back[abi:ne200100](&v10, &v9);
      }
    }

    else
    {
      v9 = 3552;
      std::vector<unsigned int>::push_back[abi:ne200100](&v10, &v9);
      v9 = 3553;
      std::vector<unsigned int>::push_back[abi:ne200100](&v10, &v9);
      v9 = 34067;
      std::vector<unsigned int>::push_back[abi:ne200100](&v10, &v9);
      v9 = 32879;
      std::vector<unsigned int>::push_back[abi:ne200100](&v10, &v9);
    }
  }

  else
  {
    switch(api)
    {
      case 2:
        v9 = 3553;
        std::vector<unsigned int>::push_back[abi:ne200100](&v10, &v9);
        v9 = 34067;
        std::vector<unsigned int>::push_back[abi:ne200100](&v10, &v9);
        break;
      case 3:
        v9 = 3552;
        std::vector<unsigned int>::push_back[abi:ne200100](&v10, &v9);
        v9 = 3553;
        std::vector<unsigned int>::push_back[abi:ne200100](&v10, &v9);
        v9 = 34067;
        std::vector<unsigned int>::push_back[abi:ne200100](&v10, &v9);
        v9 = 32879;
        std::vector<unsigned int>::push_back[abi:ne200100](&v10, &v9);
        v9 = 35864;
        std::vector<unsigned int>::push_back[abi:ne200100](&v10, &v9);
        v9 = 35866;
        std::vector<unsigned int>::push_back[abi:ne200100](&v10, &v9);
        v9 = 34037;
        std::vector<unsigned int>::push_back[abi:ne200100](&v10, &v9);
        v9 = 35882;
        std::vector<unsigned int>::push_back[abi:ne200100](&v10, &v9);
        v9 = 37120;
        std::vector<unsigned int>::push_back[abi:ne200100](&v10, &v9);
        v9 = 37122;
        std::vector<unsigned int>::push_back[abi:ne200100](&v10, &v9);
        break;
      case 4:
        v9 = 3553;
        std::vector<unsigned int>::push_back[abi:ne200100](&v10, &v9);
        v9 = 34067;
        std::vector<unsigned int>::push_back[abi:ne200100](&v10, &v9);
        v9 = 35866;
        std::vector<unsigned int>::push_back[abi:ne200100](&v10, &v9);
        v9 = 32879;
        std::vector<unsigned int>::push_back[abi:ne200100](&v10, &v9);
        break;
    }
  }

  if ([objc_msgSend(v5 "extensions")] && !self->_api || objc_msgSend(objc_msgSend(v5, "extensions"), "containsObject:", @"GL_EXT_texture_rectangle") && !self->_api)
  {
    v9 = 34037;
    std::vector<unsigned int>::push_back[abi:ne200100](&v10, &v9);
  }

  if ([objc_msgSend(v5 "extensions")] && !self->_api)
  {
    v9 = 35864;
    std::vector<unsigned int>::push_back[abi:ne200100](&v10, &v9);
    v9 = 35866;
    std::vector<unsigned int>::push_back[abi:ne200100](&v10, &v9);
  }

  v7 = v10;
  v8 = v11;
  if (v10 != v11)
  {
    do
    {
      (*(targets + 2))(targets, *v7++);
    }

    while (v7 != v8);
    v7 = v10;
  }

  if (v7)
  {
    v11 = v7;
    operator delete(v7);
  }
}

- (int)rendererType
{
  v2 = [-[NSArray objectAtIndex:](self->_renderers objectAtIndex:{self->_currentRendererIndex), "renderer"}];
  if ([v2 rangeOfString:@"PowerVR SGX"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    return 2;
  }

  if ([v2 rangeOfString:@"Apple Software Renderer"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 3;
  }

  return 1;
}

@end