@interface MKHTTPRequestMultiplexer
- (MKHTTPRequestMultiplexer)init;
- (id)method:(unint64_t)method;
- (id)routerForMethod:(id)method path:(id)path;
- (void)addRouter:(id)router method:(unint64_t)method path:(id)path;
@end

@implementation MKHTTPRequestMultiplexer

- (MKHTTPRequestMultiplexer)init
{
  v6.receiver = self;
  v6.super_class = MKHTTPRequestMultiplexer;
  v2 = [(MKHTTPRequestMultiplexer *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    routers = v2->_routers;
    v2->_routers = v3;
  }

  return v2;
}

- (id)method:(unint64_t)method
{
  if (method - 1 > 8)
  {
    return &stru_286A8E730;
  }

  else
  {
    return off_2798DCE88[method - 1];
  }
}

- (void)addRouter:(id)router method:(unint64_t)method path:(id)path
{
  routerCopy = router;
  pathCopy = path;
  v9 = [(MKHTTPRequestMultiplexer *)self method:method];
  if ([pathCopy characterAtIndex:{objc_msgSend(pathCopy, "length") - 1}] != 47)
  {
    v10 = [pathCopy stringByAppendingString:@"/"];

    pathCopy = v10;
  }

  v11 = [(NSMutableDictionary *)self->_routers objectForKey:v9];
  if (!v11)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(NSMutableDictionary *)self->_routers setObject:v11 forKey:v9];
  }

  [v11 setObject:routerCopy forKey:pathCopy];
}

- (id)routerForMethod:(id)method path:(id)path
{
  v19[3] = *MEMORY[0x277D85DE8];
  methodCopy = method;
  pathCopy = path;
  if ([pathCopy characterAtIndex:{objc_msgSend(pathCopy, "length") - 1}] != 47)
  {
    v8 = [pathCopy stringByAppendingString:@"/"];

    pathCopy = v8;
  }

  pathComponents = [pathCopy pathComponents];
  if ([pathComponents count] < 2)
  {
    v13 = 0;
  }

  else
  {
    v10 = [pathComponents objectAtIndexedSubscript:0];
    v11 = [pathComponents objectAtIndexedSubscript:{1, v10}];
    v19[1] = v11;
    v19[2] = @"/";
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];
    v13 = [v12 componentsJoinedByString:&stru_286A8E730];
  }

  v14 = [(NSMutableDictionary *)self->_routers objectForKey:methodCopy];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 objectForKey:pathCopy];
    if (!v16 && v13)
    {
      v16 = [v15 objectForKey:v13];
    }

    if (!v16)
    {
      v16 = [v15 objectForKey:@"/"];
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

@end