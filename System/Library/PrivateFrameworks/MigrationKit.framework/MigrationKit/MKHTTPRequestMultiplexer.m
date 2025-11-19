@interface MKHTTPRequestMultiplexer
- (MKHTTPRequestMultiplexer)init;
- (id)method:(unint64_t)a3;
- (id)routerForMethod:(id)a3 path:(id)a4;
- (void)addRouter:(id)a3 method:(unint64_t)a4 path:(id)a5;
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

- (id)method:(unint64_t)a3
{
  if (a3 - 1 > 8)
  {
    return &stru_286A8E730;
  }

  else
  {
    return off_2798DCE88[a3 - 1];
  }
}

- (void)addRouter:(id)a3 method:(unint64_t)a4 path:(id)a5
{
  v12 = a3;
  v8 = a5;
  v9 = [(MKHTTPRequestMultiplexer *)self method:a4];
  if ([v8 characterAtIndex:{objc_msgSend(v8, "length") - 1}] != 47)
  {
    v10 = [v8 stringByAppendingString:@"/"];

    v8 = v10;
  }

  v11 = [(NSMutableDictionary *)self->_routers objectForKey:v9];
  if (!v11)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(NSMutableDictionary *)self->_routers setObject:v11 forKey:v9];
  }

  [v11 setObject:v12 forKey:v8];
}

- (id)routerForMethod:(id)a3 path:(id)a4
{
  v19[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v7 characterAtIndex:{objc_msgSend(v7, "length") - 1}] != 47)
  {
    v8 = [v7 stringByAppendingString:@"/"];

    v7 = v8;
  }

  v9 = [v7 pathComponents];
  if ([v9 count] < 2)
  {
    v13 = 0;
  }

  else
  {
    v10 = [v9 objectAtIndexedSubscript:0];
    v11 = [v9 objectAtIndexedSubscript:{1, v10}];
    v19[1] = v11;
    v19[2] = @"/";
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];
    v13 = [v12 componentsJoinedByString:&stru_286A8E730];
  }

  v14 = [(NSMutableDictionary *)self->_routers objectForKey:v6];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 objectForKey:v7];
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